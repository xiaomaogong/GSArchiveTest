//
//  ViewController.m
//  Sample
//
//  Created by Garrett Moon on 3/22/16.
//
//  Copyright (c) 2014-present, Facebook, Inc.  All rights reserved.
//  This source code is licensed under the BSD-style license found in the
//  LICENSE file in the root directory of this source tree. An additional grant
//  of patent rights can be found in the PATENTS file in the same directory.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
//  FACEBOOK BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
//  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "ViewController.h"
#import "PINAnimatedImage.h"
#import "TKTestNode.h"

#import <AsyncDisplayKit/AsyncDisplayKit.h>

static CGFloat ImageWidth = 200;

@interface ViewController ()<ASNetworkImageNodeDelegate>

@property(nonatomic,strong)ASNetworkImageNode* imageNode;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
    self.imageNode = [[ASNetworkImageNode alloc] init];
    self.imageNode.URL = [NSURL URLWithString:@"https://s-media-cache-ak0.pinimg.com/originals/07/44/38/074438e7c75034df2dcf37ba1057803e.gif"];
    self.imageNode.frame = CGRectMake(0, 50, ImageWidth, 200);
//    imageNode.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.imageNode.contentMode = UIViewContentModeScaleAspectFill;
    self.imageNode.delegate = self;
    self.imageNode.borderWidth = 2;
    self.imageNode.borderColor = [[UIColor blackColor] CGColor];
    self.imageNode.clipsToBounds = YES;
    
  
  [self.view addSubnode:self.imageNode];
    
    
//    TKTestNode* node = [TKTestNode new];
//    [self.view addSubnode:node];
//    CGSize size = CGSizeMake(200, 200);
//    ASSizeRange range = ASSizeRangeMake(size, size);
//    [node measureWithSizeRange:range];
//    node.frame = CGRectMake(50, 50, node.calculatedSize.width, node.calculatedSize.height);
}

- (void)imageNode:(ASNetworkImageNode *)imageNode didLoadImage:(UIImage *)image{
    id <ASAnimatedImageProtocol> animateImage = imageNode.animatedImage;

    [animateImage setCoverImageReadyCallback:^(UIImage * _Nonnull image) {
        CGFloat width = imageNode.animatedImage.coverImage.size.width;
        CGFloat ratio = ImageWidth / width;
        CGFloat newHeight = ceil(ratio * imageNode.animatedImage.coverImage.size.height);
//        imageNode.preferredFrameSize = CGSizeMake(ImageWidth, ratio * imageNode.animatedImage.coverImage.size.height);
//        imageNode.frame = CGRectMake(0, 50, ImageWidth, newHeight);
        [imageNode setNeedsLayout];
    }];
}

- (void)imageNodeDidStartFetchingData:(ASNetworkImageNode *)imageNode{
    
}

- (void)imageNodeDidFinishDecoding:(ASNetworkImageNode *)imageNode{
    
}

- (void)imageNode:(ASNetworkImageNode *)imageNode didFailWithError:(NSError *)error{
    
}
@end
