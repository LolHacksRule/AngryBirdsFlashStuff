package §0!w§
{
   import §`"2§.§6!,§;
   import §`L§.DisplayObject;
   import §`L§.Sprite;
   
   public class §8!I§ extends §5i§
   {
      
      public static const §`!_§:Number = 1024;
      
      public static const §?_§:Number = 658;
      
      public static const §78§:Number = 55;
      
      public static const §,!w§:String = "cubic_in_out";
      
      public static const §["&§:String = "sin_in_out";
      
      public static const §;!`§:String = "none";
       
      
      private var §-A§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §+!C§:Number;
      
      private var §1z§:Number;
      
      private var §1Z§:Boolean = true;
      
      private var §4!I§:String = "cubic_in_out";
      
      public function §8!I§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§-A§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§4!I§ = param6;
      }
      
      public function set §[F§(param1:Boolean) : void
      {
         this.§1Z§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!,§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-A§))
            {
               if(_loc4_.name == §#"2§.§%"%§)
               {
                  if(this.§1Z§)
                  {
                     _loc4_.x = -this.§`a§() * this.§>A§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§`a§() * this.§>A§(param1);
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
      
      private function §>A§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§4!I§)
         {
            case §,!w§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §["&§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §`a§() : Number
      {
         if(this.§1Z§)
         {
            return this.§+!C§ - §`!_§;
         }
         return this.§1z§ - §?_§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§+!C§ = param1;
         this.§1z§ = param2;
      }
      
      override public function clone() : §5i§
      {
         var _loc1_:§8!I§ = new §8!I§(time,duration,this.§-A§,this.mX,this.mY,this.§4!I§);
         _loc1_.§+!C§ = this.§+!C§;
         _loc1_.§1z§ = this.§1z§;
         _loc1_.§1Z§ = this.§1Z§;
         return _loc1_;
      }
   }
}
