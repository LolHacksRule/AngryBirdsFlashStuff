package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §=3§.§-!h§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §@"1§.§8L§;
   import §@"1§.§`!j§;
   
   public class §1_§ extends §8L§
   {
      
      private static const §`M§:Number = 20;
      
      private static const §#i§:Number = 720;
      
      public static const §,k§:Number = 1.5;
       
      
      private var §[!b§:Object;
      
      private var §"!K§:§]!X§ = null;
      
      public function §1_§(param1:§`!j§, param2:Sprite, param3:String, param4:§>"4§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§[!b§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §6!3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §=!p§ = false;
         §6z§ = -1;
         this.§[!b§.x = param1;
         this.§[!b§.y = param2;
         this.§[!b§.rotation = §8>§;
         if(param5)
         {
            this.§"!K§ = §-!h§.§=J§.§]W§(§-!h§.§=J§.§<"%§(§-!h§.§=J§.§-r§(this.§[!b§,{"y":param4 - §`M§},{"y":param2},§,k§ / 2,§`!F§.§^!W§),§-!h§.§=J§.§-r§(this.§[!b§,{"y":param4},{"y":param4 - §`M§},§,k§ / 2,§`!F§.§7!P§)),§-!h§.§=J§.§-r§(this.§[!b§,{
               "x":param3,
               "rotation":§8>§ - §#i§
            },null,§,k§));
         }
         else
         {
            this.§"!K§ = §-!h§.§=J§.§-r§(null,null,null,§,k§);
         }
         this.§"!K§.onComplete = this.§1!'§;
      }
      
      private function §1!'§() : void
      {
         this.§"!K§ = null;
         §#!C§ = this.§[!b§.rotation;
         §"!W§ = §8>§;
         setPosition(this.§[!b§.x,this.§[!b§.y);
         §=!p§ = false;
         §6z§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§"!K§ != null)
         {
            if(this.§"!K§.isPaused)
            {
               this.§"!K§.play();
            }
            setPosition(this.§[!b§.x,this.§[!b§.y);
            §#!C§ = this.§[!b§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§"!K§ && this.§"!K§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §3"3§() : Boolean
      {
         if(this.§"!K§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§"!K§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§"!K§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
