package §0I§
{
   import §-!f§.§7!6§;
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import com.angrybirds.§6U§;
   
   public class §3#§ extends Sprite
   {
       
      
      protected var §=!0§:Sprite;
      
      protected var §<!A§:DisplayObject;
      
      protected var §`!s§:Sprite;
      
      public function §3#§()
      {
         super();
         addChild(this.§`!s§ = new Sprite());
         this.§`!s§.addChild(this.§=!0§ = new Sprite());
         this.§<!A§ = new §7!6§(2,2,0);
         this.§<!A§.width = §6U§.§[6§;
         this.§<!A§.height = §6U§.§1a§;
         addChild(this.§<!A§);
         this.§<!A§.alpha = 0.5;
      }
      
      public function get §#!a§() : Sprite
      {
         return this.§=!0§;
      }
      
      public function get §'!M§() : DisplayObject
      {
         return this.§<!A§;
      }
      
      public function get §[+§() : Sprite
      {
         return this.§`!s§;
      }
      
      public function §<-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<!A§.width / this.§<!A§.height;
         this.§<!A§.width = param1 + 600 / _loc3_;
         this.§<!A§.height = param2 + 600 / _loc3_;
      }
   }
}
