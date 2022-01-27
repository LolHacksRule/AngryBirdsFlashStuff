package §5!q§
{
   import §1"s§.§#"b§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import com.angrybirds.§;!e§;
   
   public class §4a§ extends Sprite
   {
       
      
      protected var §""3§:Sprite;
      
      protected var §6"+§:DisplayObject;
      
      protected var §7n§:Sprite;
      
      public function §4a§()
      {
         super();
         addChild(this.§7n§ = new Sprite());
         this.§7n§.addChild(this.§""3§ = new Sprite());
         this.§6"+§ = new §#"b§(2,2,0);
         this.§6"+§.width = §;!e§.§]";§;
         this.§6"+§.height = §;!e§.§8"?§;
         addChild(this.§6"+§);
         this.§6"+§.alpha = 0.5;
      }
      
      public function get §3# §() : Sprite
      {
         return this.§""3§;
      }
      
      public function get §`!Y§() : DisplayObject
      {
         return this.§6"+§;
      }
      
      public function get §@#!§() : Sprite
      {
         return this.§7n§;
      }
      
      public function §[#3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6"+§.width / this.§6"+§.height;
         this.§6"+§.width = param1 + 600 / _loc3_;
         this.§6"+§.height = param2 + 600 / _loc3_;
      }
   }
}
