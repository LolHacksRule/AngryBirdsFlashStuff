package §'!I§
{
   import § !N§.§`v§;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   
   public class §;i§ extends §]p§
   {
      
      public static const §=!M§:Number = 1024;
      
      public static const §"!§:Number = 658;
      
      public static const §<J§:Number = 55;
      
      public static const §=!D§:String = "cubic_in_out";
      
      public static const §#U§:String = "sin_in_out";
      
      public static const §'p§:String = "none";
       
      
      private var §`n§:String;
      
      private var §,R§:Number;
      
      private var §=! §:Number;
      
      private var §#!6§:Number;
      
      private var §&r§:Number;
      
      private var §8=§:Boolean = true;
      
      private var §0J§:String = "cubic_in_out";
      
      public function §;i§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§`n§ = param3;
         this.§,R§ = param4;
         this.§=! § = param5;
         this.§0J§ = param6;
      }
      
      public function set §6!K§(param1:Boolean) : void
      {
         this.§8=§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`v§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`n§))
            {
               if(_loc4_.name == §9s§.§`! §)
               {
                  if(this.§8=§)
                  {
                     _loc4_.x = -this.§]=§() * this.§7-§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§]=§() * this.§7-§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§,R§;
                  _loc4_.y -= this.§=! §;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §7-§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§0J§)
         {
            case §=!D§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §#U§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §]=§() : Number
      {
         if(this.§8=§)
         {
            return this.§#!6§ - §=!M§;
         }
         return this.§&r§ - §"!§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§#!6§ = param1;
         this.§&r§ = param2;
      }
      
      override public function clone() : §]p§
      {
         var _loc1_:§;i§ = new §;i§(time,duration,this.§`n§,this.§,R§,this.§=! §,this.§0J§);
         _loc1_.§#!6§ = this.§#!6§;
         _loc1_.§&r§ = this.§&r§;
         _loc1_.§8=§ = this.§8=§;
         return _loc1_;
      }
   }
}
