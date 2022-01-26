package §+i§
{
   import §7u§.DisplayObject;
   import §7u§.Sprite;
   import §`!B§.§=m§;
   
   public class §6[§ extends §'6§
   {
      
      public static const §'s§:Number = 1024;
      
      public static const §&!8§:Number = 658;
      
      public static const §70§:Number = 55;
      
      public static const §8!F§:String = "cubic_in_out";
      
      public static const §<!1§:String = "sin_in_out";
      
      public static const §'v§:String = "none";
       
      
      private var §4t§:String;
      
      private var §,G§:Number;
      
      private var §-+§:Number;
      
      private var §5I§:Number;
      
      private var §1Q§:Number;
      
      private var §,&§:Boolean = true;
      
      private var §&1§:String = "cubic_in_out";
      
      public function §6[§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§4t§ = param3;
         this.§,G§ = param4;
         this.§-+§ = param5;
         this.§&1§ = param6;
      }
      
      public function set §4L§(param1:Boolean) : void
      {
         this.§,&§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4t§))
            {
               if(_loc4_.name == §#!T§.§0n§)
               {
                  if(this.§,&§)
                  {
                     _loc4_.x = -this.§9!2§() * this.§7!,§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§9!2§() * this.§7!,§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§,G§;
                  _loc4_.y -= this.§-+§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7!,§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§&1§)
         {
            case §8!F§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §<!1§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §9!2§() : Number
      {
         if(this.§,&§)
         {
            return this.§5I§ - §'s§;
         }
         return this.§1Q§ - §&!8§;
      }
      
      public function §,!K§(param1:Number, param2:Number) : void
      {
         this.§5I§ = param1;
         this.§1Q§ = param2;
      }
      
      override public function clone() : §'6§
      {
         var _loc1_:§6[§ = new §6[§(time,duration,this.§4t§,this.§,G§,this.§-+§,this.§&1§);
         _loc1_.§5I§ = this.§5I§;
         _loc1_.§1Q§ = this.§1Q§;
         _loc1_.§,&§ = this.§,&§;
         return _loc1_;
      }
   }
}
