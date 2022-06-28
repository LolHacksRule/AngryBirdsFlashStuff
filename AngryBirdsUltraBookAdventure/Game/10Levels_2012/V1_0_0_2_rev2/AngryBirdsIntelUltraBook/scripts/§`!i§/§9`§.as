package §`!i§
{
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §9`§ extends §8d§
   {
      
      public static const §[o§:Number = 1024;
      
      public static const §-S§:Number = 658;
      
      public static const §@0§:Number = 55;
      
      public static const §%!S§:String = "cubic_in_out";
      
      public static const §5z§:String = "sin_in_out";
      
      public static const §3!V§:String = "none";
       
      
      private var §!0§:String;
      
      private var §,G§:Number;
      
      private var §78§:Number;
      
      private var §'O§:Number;
      
      private var §!!A§:Number;
      
      private var §8v§:Boolean = true;
      
      private var §,s§:String = "cubic_in_out";
      
      public function §9`§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§!0§ = param3;
         this.§,G§ = param4;
         this.§78§ = param5;
         this.§,s§ = param6;
      }
      
      public function set §1!P§(param1:Boolean) : void
      {
         this.§8v§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§!0§))
            {
               if(_loc4_.name == §;!@§.§ 1§)
               {
                  if(this.§8v§)
                  {
                     _loc4_.x = -this.§%!J§() * this.§'X§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§%!J§() * this.§'X§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§,G§;
                  _loc4_.y -= this.§78§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'X§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§,s§)
         {
            case §%!S§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §5z§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §%!J§() : Number
      {
         if(this.§8v§)
         {
            return this.§'O§ - §[o§;
         }
         return this.§!!A§ - §-S§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§'O§ = param1;
         this.§!!A§ = param2;
      }
      
      override public function clone() : §8d§
      {
         var _loc1_:§9`§ = new §9`§(time,duration,this.§!0§,this.§,G§,this.§78§,this.§,s§);
         _loc1_.§'O§ = this.§'O§;
         _loc1_.§!!A§ = this.§!!A§;
         _loc1_.§8v§ = this.§8v§;
         return _loc1_;
      }
   }
}
