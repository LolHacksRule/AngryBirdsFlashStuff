package §+!c§
{
   import flash.display.MovieClip;
   
   public class §6!R§
   {
      
      public static const §'![§:Number = 1024;
      
      public static const §="E§:Number = 768;
       
      
      private var §^c§:MovieClip;
      
      private var §##9§:Vector.<Rock>;
      
      public function §6!R§(param1:MovieClip)
      {
         super();
         this.§^c§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc3_:Rock = null;
         while(this.§^c§.numChildren > 0)
         {
            this.§^c§.removeChildAt(0);
         }
         var _loc1_:int = Math.round(7 + Math.random() * 5);
         this.§##9§ = new Vector.<Rock>(_loc1_);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = new Rock();
            this.§##9§[_loc2_] = _loc3_;
            this.§^c§.addChild(_loc3_);
            _loc3_.x = Math.random() * §6!R§.§'![§;
            _loc3_.y = Math.random() * §6!R§.§="E§;
            _loc3_.rotation = Math.random() * 360;
            _loc2_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Rock = null;
         var _loc2_:int = this.§##9§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§##9§[_loc2_];
            _loc3_.update(param1);
            if(_loc3_.x < -100)
            {
               _loc3_.x = §'![§ + 100;
               _loc3_.randomizeType();
            }
            else if(_loc3_.x > §'![§ + 100)
            {
               _loc3_.x = -100;
               _loc3_.randomizeType();
            }
            else if(_loc3_.y < -100)
            {
               _loc3_.y = §="E§ + 100;
               _loc3_.randomizeType();
            }
            else if(_loc3_.y > §="E§ + 100)
            {
               _loc3_.y = -100;
               _loc3_.randomizeType();
            }
            _loc2_--;
         }
      }
   }
}

import com.rovio.assets.§5_§;
import flash.display.MovieClip;
import flash.display.Sprite;

class Rock extends Sprite
{
    
   
   private var mXspeed:Number;
   
   private var mYspeed:Number;
   
   private var mRotationalSpeed:Number;
   
   private var mAsset:MovieClip;
   
   function Rock()
   {
      super();
      this.mAsset = new §5_§.§`"G§("IdlingRock")();
      addChild(this.mAsset);
      this.randomizeType();
      this.mXspeed = -5 + Math.random() * 10;
      this.mYspeed = -5 + Math.random() * 10;
      this.mRotationalSpeed = -5 + Math.random() * 10;
   }
   
   public function update(param1:Number) : void
   {
      var _loc2_:Number = param1 / 1000;
      x += this.mXspeed * _loc2_;
      y += this.mYspeed * _loc2_;
      rotation += this.mRotationalSpeed * _loc2_;
   }
   
   public function randomizeType() : void
   {
      this.mAsset.gotoAndStop(1 + Math.floor(Math.random() * this.mAsset.totalFrames));
   }
}
