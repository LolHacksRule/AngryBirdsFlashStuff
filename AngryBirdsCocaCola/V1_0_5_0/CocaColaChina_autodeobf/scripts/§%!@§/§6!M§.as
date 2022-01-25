package §%!@§
{
   import §+N§.§``§;
   import §<!$§.DisplayObject;
   import §<!$§.Sprite;
   
   public class §6!M§ extends §[!$§
   {
      
      public static const §'[§:Number = 1024;
      
      public static const §+!U§:Number = 658;
      
      public static const §2!`§:Number = 55;
      
      public static const §6!b§:String = "cubic_in_out";
      
      public static const §^q§:String = "sin_in_out";
      
      public static const §&!I§:String = "none";
       
      
      private var §1!8§:String;
      
      private var §;i§:Number;
      
      private var §%i§:Number;
      
      private var §,E§:Number;
      
      private var §4X§:Number;
      
      private var §@g§:Boolean = true;
      
      private var §+!I§:String = "cubic_in_out";
      
      public function §6!M§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§1!8§ = param3;
         this.§;i§ = param4;
         this.§%i§ = param5;
         this.§+!I§ = param6;
      }
      
      public function set §7s§(param1:Boolean) : void
      {
         this.§@g§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§``§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!8§))
            {
               if(_loc4_.name == §+!Z§.§'F§)
               {
                  if(this.§@g§)
                  {
                     _loc4_.x = -this.§9!K§() * this.§+m§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§9!K§() * this.§+m§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§;i§;
                  _loc4_.y -= this.§%i§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+m§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§+!I§)
         {
            case §6!b§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §^q§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §9!K§() : Number
      {
         if(this.§@g§)
         {
            return this.§,E§ - §'[§;
         }
         return this.§4X§ - §+!U§;
      }
      
      public function §^!$§(param1:Number, param2:Number) : void
      {
         this.§,E§ = param1;
         this.§4X§ = param2;
      }
      
      override public function clone() : §[!$§
      {
         var _loc1_:§6!M§ = new §6!M§(time,duration,this.§1!8§,this.§;i§,this.§%i§,this.§+!I§);
         _loc1_.§,E§ = this.§,E§;
         _loc1_.§4X§ = this.§4X§;
         _loc1_.§@g§ = this.§@g§;
         return _loc1_;
      }
   }
}
