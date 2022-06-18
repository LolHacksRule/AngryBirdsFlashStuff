package §+!C§
{
   import §&!v§.§0"s§;
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §6"r§.§!#A§;
   
   public class §-!g§ extends Sprite
   {
       
      
      protected var §@!r§:Sprite;
      
      protected var §?"p§:DisplayObject;
      
      protected var §1#l§:Sprite;
      
      public function §-!g§()
      {
         super();
         addChild(this.§1#l§ = new Sprite());
         this.§1#l§.addChild(this.§@!r§ = new Sprite());
         this.§?"p§ = new §0"s§(2,2,0);
         this.§?"p§.width = §!#A§.§-Y§;
         this.§?"p§.height = §!#A§.§<!q§;
         addChild(this.§?"p§);
         this.§?"p§.alpha = 0.5;
      }
      
      public function get §[!$§() : Sprite
      {
         return this.§@!r§;
      }
      
      public function get §&"j§() : DisplayObject
      {
         return this.§?"p§;
      }
      
      public function get §`"V§() : Sprite
      {
         return this.§1#l§;
      }
      
      public function §@!c§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?"p§.width / this.§?"p§.height;
         this.§?"p§.width = param1 + 600 / _loc3_;
         this.§?"p§.height = param2 + 600 / _loc3_;
      }
   }
}
