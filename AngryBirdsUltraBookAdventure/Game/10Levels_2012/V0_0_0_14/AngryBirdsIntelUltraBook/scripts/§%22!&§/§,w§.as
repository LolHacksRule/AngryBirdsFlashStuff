package §"!&§
{
   import §,6§.§!o§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   
   public class §,w§ extends §!!%§
   {
      
      public static const §]m§:Number = 1024;
      
      public static const §0N§:Number = 658;
      
      public static const §]@§:Number = 55;
      
      public static const §<g§:String = "cubic_in_out";
      
      public static const §=!W§:String = "sin_in_out";
      
      public static const §5!L§:String = "none";
       
      
      private var §0!T§:String;
      
      private var §;!@§:Number;
      
      private var §3L§:Number;
      
      private var §>!D§:Number;
      
      private var §7!3§:Number;
      
      private var §#!h§:Boolean = true;
      
      private var §2§:String = "cubic_in_out";
      
      public function §,w§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§0!T§ = param3;
         this.§;!@§ = param4;
         this.§3L§ = param5;
         this.§2§ = param6;
      }
      
      public function set §!&§(param1:Boolean) : void
      {
         this.§#!h§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§0!T§))
            {
               if(_loc4_.name == §+l§.§82§)
               {
                  if(this.§#!h§)
                  {
                     _loc4_.x = -this.§6!0§() * this.§<!M§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§6!0§() * this.§<!M§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§;!@§;
                  _loc4_.y -= this.§3L§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<!M§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§2§)
         {
            case §<g§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §=!W§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §6!0§() : Number
      {
         if(this.§#!h§)
         {
            return this.§>!D§ - §]m§;
         }
         return this.§7!3§ - §0N§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§>!D§ = param1;
         this.§7!3§ = param2;
      }
      
      override public function clone() : §!!%§
      {
         var _loc1_:§,w§ = new §,w§(time,duration,this.§0!T§,this.§;!@§,this.§3L§,this.§2§);
         _loc1_.§>!D§ = this.§>!D§;
         _loc1_.§7!3§ = this.§7!3§;
         _loc1_.§#!h§ = this.§#!h§;
         return _loc1_;
      }
   }
}
