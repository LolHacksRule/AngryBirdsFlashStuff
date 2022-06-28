package §3G§
{
   import §+!?§.§"h§;
   import §,_§.§-!!§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   
   public class §6!>§ extends Sprite
   {
       
      
      protected var §[!@§:Sprite;
      
      protected var §[§:DisplayObject;
      
      protected var §1G§:Sprite;
      
      public function §6!>§()
      {
         super();
         addChild(this.§1G§ = new Sprite());
         this.§1G§.addChild(this.§[!@§ = new Sprite());
         this.§[§ = new §-!!§(2,2,0);
         this.§[§.width = §"h§.§4T§;
         this.§[§.height = §"h§.§0!$§;
         addChild(this.§[§);
         this.§[§.alpha = 0.5;
      }
      
      public function get §4L§() : Sprite
      {
         return this.§[!@§;
      }
      
      public function get §?!=§() : DisplayObject
      {
         return this.§[§;
      }
      
      public function get §&8§() : Sprite
      {
         return this.§1G§;
      }
      
      public function §=!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§[§.width / this.§[§.height;
         this.§[§.width = param1 + 600 / _loc3_;
         this.§[§.height = param2 + 600 / _loc3_;
      }
   }
}
