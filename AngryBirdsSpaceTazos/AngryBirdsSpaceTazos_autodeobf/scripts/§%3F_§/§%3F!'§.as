package §?_§
{
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §?!'§ extends §3'§
   {
      
      public static const §?[§:Number = 1024;
      
      public static const §3!h§:Number = 658;
      
      public static const §&!9§:Number = 55;
      
      public static const §%!X§:String = "cubic_in_out";
      
      public static const §,!P§:String = "sin_in_out";
      
      public static const final:String = "none";
       
      
      private var §6K§:String;
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §<!f§:Number;
      
      private var §8>§:Number;
      
      private var §@I§:Boolean = true;
      
      private var §!k§:String = "cubic_in_out";
      
      public function §?!'§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§6K§ = param3;
         this.§""4§ = param4;
         this.§%W§ = param5;
         this.§!k§ = param6;
      }
      
      public function set §?!!§(param1:Boolean) : void
      {
         this.§@I§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§6K§))
            {
               if(_loc4_.name == §5"!§.§!#§)
               {
                  if(this.§@I§)
                  {
                     _loc4_.x = -this.§8§() * this.§?!=§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§8§() * this.§?!=§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§""4§;
                  _loc4_.y -= this.§%W§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §?!=§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§!k§)
         {
            case §%!X§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §,!P§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §8§() : Number
      {
         if(this.§@I§)
         {
            return this.§<!f§ - §?[§;
         }
         return this.§8>§ - §3!h§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<!f§ = param1;
         this.§8>§ = param2;
      }
      
      override public function clone() : §3'§
      {
         var _loc1_:§?!'§ = new §?!'§(time,duration,this.§6K§,this.§""4§,this.§%W§,this.§!k§);
         _loc1_.§<!f§ = this.§<!f§;
         _loc1_.§8>§ = this.§8>§;
         _loc1_.§@I§ = this.§@I§;
         return _loc1_;
      }
   }
}
