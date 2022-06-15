package §`"0§
{
   import §'G§.§3$§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   
   public class §-"J§ extends §?#d§
   {
      
      public static const §1!Q§:Number = 1024;
      
      public static const §##3§:Number = 658;
      
      public static const §<$8§:Number = 55;
      
      public static const §6"%§:String = "cubic_in_out";
      
      public static const §6#i§:String = "sin_in_out";
      
      public static const §8t§:String = "none";
       
      
      private var §@!J§:String;
      
      private var §["d§:Number;
      
      private var §%#z§:Number;
      
      private var §>H§:Number;
      
      private var §^l§:Number;
      
      private var §>!w§:Boolean = true;
      
      private var §@4§:String = "cubic_in_out";
      
      public function §-"J§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§@!J§ = param3;
         this.§["d§ = param4;
         this.§%#z§ = param5;
         this.§@4§ = param6;
      }
      
      public function set §=!c§(param1:Boolean) : void
      {
         this.§>!w§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3$§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§@!J§))
            {
               if(_loc4_.name == §@!9§.§7!X§)
               {
                  if(this.§>!w§)
                  {
                     _loc4_.x = -this.§!#"§() * this.§`#o§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§!#"§() * this.§`#o§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§["d§;
                  _loc4_.y -= this.§%#z§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §`#o§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§@4§)
         {
            case §6"%§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §6#i§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §!#"§() : Number
      {
         if(this.§>!w§)
         {
            return this.§>H§ - §1!Q§;
         }
         return this.§^l§ - §##3§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§>H§ = param1;
         this.§^l§ = param2;
      }
      
      override public function clone() : §?#d§
      {
         var _loc1_:§-"J§ = new §-"J§(time,duration,this.§@!J§,this.§["d§,this.§%#z§,this.§@4§);
         _loc1_.§>H§ = this.§>H§;
         _loc1_.§^l§ = this.§^l§;
         _loc1_.§>!w§ = this.§>!w§;
         return _loc1_;
      }
   }
}
