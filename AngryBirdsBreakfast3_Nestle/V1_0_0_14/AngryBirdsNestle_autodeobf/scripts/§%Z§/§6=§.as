package §%Z§
{
   import § 2§.§<!F§;
   import § 2§.§`!d§;
   import §2!s§.§!e§;
   import §@!0§.§%"!§;
   import §@!0§.§'a§;
   import §@!0§.§^!T§;
   import §`!B§.Sprite;
   
   public class §6=§ extends §`!d§
   {
      
      private static const §-"!§:Number = 20;
      
      private static const §&`§:Number = 720;
      
      public static const §[5§:Number = 1.5;
       
      
      private var §,B§:Object;
      
      private var §5![§:§^!T§ = null;
      
      public function §6=§(param1:§<!F§, param2:Sprite, param3:String, param4:§!e§, param5:Number, param6:Number, param7:Number = 0.0, param8:int = 0)
      {
         this.§,B§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §3q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §1j§ = false;
         §[e§ = -1;
         this.§,B§.x = param1;
         this.§,B§.y = param2;
         this.§,B§.rotation = §5>§;
         if(param5)
         {
            this.§5![§ = §'a§.§&!;§.§ !V§(§'a§.§&!;§.§3G§(§'a§.§&!;§.§"!]§(this.§,B§,{"y":param4 - §-"!§},{"y":param2},§[5§ / 2,§%"!§.§6"0§),§'a§.§&!;§.§"!]§(this.§,B§,{"y":param4},{"y":param4 - §-"!§},§[5§ / 2,§%"!§.§+8§)),§'a§.§&!;§.§"!]§(this.§,B§,{
               "x":param3,
               "rotation":§5>§ - §&`§
            },null,§[5§));
         }
         else
         {
            this.§5![§ = §'a§.§&!;§.§"!]§(null,null,null,§[5§);
         }
         this.§5![§.onComplete = this.§5b§;
      }
      
      private function §5b§() : void
      {
         this.§5![§ = null;
         §2!j§ = this.§,B§.rotation;
         §!y§ = §5>§;
         setPosition(this.§,B§.x,this.§,B§.y);
         §1j§ = false;
         §[e§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§5![§ != null)
         {
            if(this.§5![§.isPaused)
            {
               this.§5![§.play();
            }
            setPosition(this.§,B§.x,this.§,B§.y);
            §2!j§ = this.§,B§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§5![§ && this.§5![§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §"!L§() : Boolean
      {
         if(this.§5![§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§5![§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§5![§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
