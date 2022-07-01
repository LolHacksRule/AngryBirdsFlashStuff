package §9!$§
{
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   
   public class §%!k§ extends §&!W§
   {
      
      public static const §&d§:Number = 1024;
      
      public static const §6k§:Number = 658;
      
      public static const §,@§:Number = 55;
      
      public static const §6E§:String = "cubic_in_out";
      
      public static const §=?§:String = "sin_in_out";
      
      public static const §5s§:String = "none";
       
      
      private var §'!E§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §4!L§:Number;
      
      private var §"!C§:Number;
      
      private var §`!$§:Boolean = true;
      
      private var §&"§:String = "cubic_in_out";
      
      public function §%!k§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§'!E§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§&"§ = param6;
      }
      
      public function set §#!O§(param1:Boolean) : void
      {
         this.§`!$§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§'!E§))
            {
               if(_loc4_.name == §!!N§.§!6§)
               {
                  if(this.§`!$§)
                  {
                     _loc4_.x = -this.§@X§() * this.§-!r§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§@X§() * this.§-!r§(param1);
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
      
      private function §-!r§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§&"§)
         {
            case §6E§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §=?§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §@X§() : Number
      {
         if(this.§`!$§)
         {
            return this.§4!L§ - §&d§;
         }
         return this.§"!C§ - §6k§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§4!L§ = param1;
         this.§"!C§ = param2;
      }
      
      override public function clone() : §&!W§
      {
         var _loc1_:§%!k§ = new §%!k§(time,duration,this.§'!E§,this.mX,this.mY,this.§&"§);
         _loc1_.§4!L§ = this.§4!L§;
         _loc1_.§"!C§ = this.§"!C§;
         _loc1_.§`!$§ = this.§`!$§;
         return _loc1_;
      }
   }
}
