package §8!w§
{
   import § !V§.§7!P§;
   import §]!2§.DisplayObject;
   import §]!2§.Sprite;
   
   public class §6!B§ extends §&p§
   {
      
      public static const §;"#§:Number = 1024;
      
      public static const §3g§:Number = 658;
      
      public static const §6!_§:Number = 55;
      
      public static const §4>§:String = "cubic_in_out";
      
      public static const §=y§:String = "sin_in_out";
      
      public static const §3x§:String = "none";
       
      
      private var §4n§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §=_§:Number;
      
      private var §!,§:Number;
      
      private var §?",§:Boolean = true;
      
      private var §'N§:String = "cubic_in_out";
      
      public function §6!B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§4n§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§'N§ = param6;
      }
      
      public function set §1!d§(param1:Boolean) : void
      {
         this.§?",§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4n§))
            {
               if(_loc4_.name == §4§.§4!0§)
               {
                  if(this.§?",§)
                  {
                     _loc4_.x = -this.§[p§() * this.§&t§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§[p§() * this.§&t§(param1);
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
      
      private function §&t§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§'N§)
         {
            case §4>§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §=y§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §[p§() : Number
      {
         if(this.§?",§)
         {
            return this.§=_§ - §;"#§;
         }
         return this.§!,§ - §3g§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§=_§ = param1;
         this.§!,§ = param2;
      }
      
      override public function clone() : §&p§
      {
         var _loc1_:§6!B§ = new §6!B§(time,duration,this.§4n§,this.mX,this.mY,this.§'N§);
         _loc1_.§=_§ = this.§=_§;
         _loc1_.§!,§ = this.§!,§;
         _loc1_.§?",§ = this.§?",§;
         return _loc1_;
      }
   }
}
