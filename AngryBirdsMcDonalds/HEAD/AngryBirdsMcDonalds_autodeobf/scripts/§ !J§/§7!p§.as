package § !J§
{
   import §7F§.§2M§;
   import §`!n§.§ !i§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   
   public class §7!p§ extends Sprite
   {
       
      
      protected var §[o§:Sprite;
      
      protected var §-y§:DisplayObject;
      
      protected var §+a§:Sprite;
      
      public function §7!p§()
      {
         super();
         addChild(this.§+a§ = new Sprite());
         this.§+a§.addChild(this.§[o§ = new Sprite());
         this.§-y§ = new § !i§(2,2,0);
         this.§-y§.width = §2M§.§&a§;
         this.§-y§.height = §2M§.§0Z§;
         addChild(this.§-y§);
         this.§-y§.alpha = 0.5;
      }
      
      public function get §"F§() : Sprite
      {
         return this.§[o§;
      }
      
      public function get §1v§() : DisplayObject
      {
         return this.§-y§;
      }
      
      public function get §7!H§() : Sprite
      {
         return this.§+a§;
      }
      
      public function §#!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§-y§.width / this.§-y§.height;
         this.§-y§.width = param1 + 600 / _loc3_;
         this.§-y§.height = param2 + 600 / _loc3_;
      }
   }
}
