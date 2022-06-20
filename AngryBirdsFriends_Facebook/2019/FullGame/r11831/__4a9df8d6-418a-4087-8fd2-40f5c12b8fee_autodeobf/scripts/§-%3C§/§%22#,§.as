package §-<§
{
   public class §"#,§ extends §'"v§
   {
       
      
      public function §"#,§(param1:String, param2:int, param3:int, param4:String, param5:Number, param6:String, param7:String, param8:String)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §+!n§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         for each(_loc4_ in param1)
         {
            this.§?"x§(_loc4_,false,param3);
         }
         for each(_loc5_ in param2)
         {
            this.§?"x§(_loc5_,true,param3);
         }
      }
      
      private function §?"x§(param1:Object, param2:Boolean, param3:Object) : void
      {
         var _loc5_:Array = null;
         var _loc20_:String = null;
         var _loc21_:String = null;
         var _loc22_:* = null;
         var _loc23_:Object = null;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Boolean = false;
         var _loc29_:Object = null;
         var _loc30_:Number = NaN;
         var _loc4_:String = param1.sprite;
         if(param1.sprites !== undefined)
         {
            _loc5_ = new Array();
            for each(_loc21_ in param1.sprites)
            {
               _loc5_.push(_loc21_);
            }
         }
         var _loc7_:Number = param1.parallax;
         var _loc8_:Number = param1.scale !== undefined ? Number(param1.scale) : Number(1);
         var _loc9_:Number = param1.frameTime !== undefined ? Number(param1.frameTime * 1000) : Number(0);
         var _loc10_:Number = 0;
         if(param1.xOffset !== undefined)
         {
            _loc10_ = param1.xOffset;
         }
         else if(param1.positionX !== undefined)
         {
            _loc10_ = param1.positionX;
         }
         var _loc11_:Number = 0;
         if(param1.yOffset !== undefined)
         {
            _loc11_ = param1.yOffset;
         }
         else if(param1.positionY !== undefined)
         {
            _loc11_ = param1.positionY;
         }
         var _loc12_:Number = 0;
         if(param1.velX !== undefined)
         {
            _loc12_ = param1.velX;
         }
         else if(param1.velocity !== undefined)
         {
            _loc12_ = param1.velocity;
         }
         var _loc13_:Boolean = param1.looping !== undefined ? Boolean(param1.looping) : true;
         var _loc14_:Boolean = param1.optional !== undefined ? Boolean(param1.optional) : false;
         var _loc15_:Number = param1.moveStartOffsetX !== undefined ? Number(param1.moveStartOffsetX) : Number(0);
         var _loc16_:Number = param1.moveEndOffsetX !== undefined ? Number(param1.moveEndOffsetX) : Number(0);
         var _loc17_:Boolean = param1.highQuality !== undefined ? Boolean(param1.highQuality) : false;
         var _loc18_:Boolean = param1.visible !== undefined ? Boolean(param1.visible) : true;
         var _loc19_:§8"h§ = new §8"h§(_loc4_,_loc5_,_loc9_,null,_loc8_,_loc7_,_loc10_,_loc11_,_loc12_,param2,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_);
         for each(_loc20_ in param1.animations)
         {
            for(_loc22_ in param3)
            {
               if(_loc20_ == _loc22_)
               {
                  _loc24_ = !!(_loc23_ = param3[_loc20_]).xOffsetPercent ? Number(_loc23_.xOffsetPercent) : Number(0);
                  _loc25_ = !!_loc23_.yOffsetPercent ? Number(_loc23_.yOffsetPercent) : Number(0);
                  _loc26_ = !!_loc23_.duration ? Number(_loc23_.duration) : Number(-1);
                  _loc27_ = !!_loc23_.scale ? Number(_loc23_.scale) : Number(1);
                  _loc28_ = !!_loc23_.hasOwnProperty("visible") ? Boolean(_loc23_.visible) : true;
                  _loc29_ = _loc23_.movement;
                  _loc30_ = !!_loc23_.finalScale ? Number(_loc23_.finalScale) : Number(_loc27_);
                  _loc19_.§ !=§(_loc20_,_loc23_.type,_loc23_.tween,_loc24_,_loc25_,_loc26_,_loc23_.trigger,_loc27_,_loc23_.audio,_loc23_.audioVolume,_loc23_.audioLoop,_loc28_,_loc29_,_loc30_);
                  break;
               }
            }
         }
         §<!u§.push(_loc19_);
      }
   }
}
