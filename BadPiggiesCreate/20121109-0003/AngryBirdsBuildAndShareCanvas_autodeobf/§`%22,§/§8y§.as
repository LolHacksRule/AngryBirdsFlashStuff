package §`",§
{
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §8y§ extends §7!s§
   {
      
      public static const §["3§:Number = 1024;
      
      public static const §7$§:Number = 658;
      
      public static const §4!r§:Number = 55;
      
      public static const §,n§:String = "cubic_in_out";
      
      public static const §%#§:String = "sin_in_out";
      
      public static const §5"§:String = "none";
       
      
      private var §#^§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §",§:Number;
      
      private var §%"0§:Number;
      
      private var §]`§:Boolean = true;
      
      private var §%!G§:String = "cubic_in_out";
      
      public function §8y§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§#^§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§%!G§ = param6;
      }
      
      public function set §1V§(param1:Boolean) : void
      {
         this.§]`§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#^§))
            {
               if(_loc4_.name == §%!!§.§=[§)
               {
                  if(this.§]`§)
                  {
                     _loc4_.x = -this.§4c§() * this.§]"$§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§4c§() * this.§]"$§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]"$§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§%!G§)
         {
            case §,n§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §%#§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §4c§() : Number
      {
         if(this.§]`§)
         {
            return this.§",§ - §["3§;
         }
         return this.§%"0§ - §7$§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§",§ = param1;
         this.§%"0§ = param2;
      }
      
      override public function clone() : §7!s§
      {
         var _loc1_:§8y§ = new §8y§(time,duration,this.§#^§,this.mX,this.mY,this.§%!G§);
         _loc1_.§",§ = this.§",§;
         _loc1_.§%"0§ = this.§%"0§;
         _loc1_.§]`§ = this.§]`§;
         return _loc1_;
      }
   }
}
