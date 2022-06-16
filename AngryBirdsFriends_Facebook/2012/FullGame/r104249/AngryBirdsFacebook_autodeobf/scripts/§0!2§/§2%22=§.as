package §0!2§
{
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §]!v§.Sprite;
   
   public class §2"=§ extends §;M§
   {
      
      private static const §8!y§:Number = 10;
      
      public static const §`!_§:Number = 1;
       
      
      private var §&t§:§!"&§ = null;
      
      private var §@"5§:Object;
      
      public function §2"=§(param1:§,!W§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§@"5§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §;">§(param1:Number, param2:Number, param3:Boolean = true) : §!"&§
      {
         §,!o§ = true;
         §[!`§ = -1;
         this.§@"5§.x = §"""§;
         this.§@"5§.y = §5!J§;
         this.§@"5§.rotation = § !r§;
         if(param3)
         {
            this.§&t§ = §&p§.§1[§.§=!i§(§&p§.§1[§.§7!3§(this.§@"5§,{
               "x":param1,
               "rotation":-360
            },null,§`!_§),§&p§.§1[§.§3"3§(§&p§.§1[§.§7!3§(this.§@"5§,{"y":this.§@"5§.y - §8!y§},null,§`!_§ / 2,§&p§.§get §),§&p§.§1[§.§7!3§(this.§@"5§,{"y":param2},{"y":this.§@"5§.y - §8!y§},§`!_§ / 2,§&p§.§7?§)));
         }
         else
         {
            this.§&t§ = §&p§.§1[§.§7!3§(null,null,null,§2"=§.§`!_§);
         }
         this.§&t§.play();
         this.§&t§.onComplete = this.§3!m§;
         return this.§&t§;
      }
      
      private function §3!m§() : void
      {
         if(this.§&t§ != null)
         {
            this.§&t§ = null;
            § !r§ = this.§@"5§.rotation;
            setPosition(this.§@"5§.x,this.§@"5§.y);
            §,!o§ = false;
            §[!`§ = -1;
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§&t§ != null)
         {
            § !r§ = this.§@"5§.rotation;
            setPosition(this.§@"5§.x,this.§@"5§.y);
            §]"C§();
            this.§&t§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§&t§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§&t§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      override public function dispose() : void
      {
         if(this.§&t§ != null)
         {
            this.§&t§.stop();
            this.§&t§.onComplete = null;
            this.§&t§ = null;
         }
         super.dispose();
      }
   }
}
