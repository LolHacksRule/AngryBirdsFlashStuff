package §"§#0
{
   import com.angrybirds.§<!J§;
   import §use§.§-"z§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §["b§ extends Sprite
   {
       
      
      protected var §5q§:Sprite;
      
      protected var §??§:DisplayObject;
      
      protected var §-a§:Sprite;
      
      public function §["b§()
      {
         super();
         addChild(this.§-a§ = new Sprite());
         this.§-a§.addChild(this.§5q§ = new Sprite());
         this.§??§ = new §-"z§(2,2,0);
         this.§??§.width = §<!J§.§8!Q§;
         this.§??§.height = §<!J§.§,e§;
         addChild(this.§??§);
         this.§??§.alpha = 0.5;
      }
      
      public function get §+!N§() : Sprite
      {
         return this.§5q§;
      }
      
      public function get §]S§() : DisplayObject
      {
         return this.§??§;
      }
      
      public function get §"!o§() : Sprite
      {
         return this.§-a§;
      }
      
      public function §6!i§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§??§.width / this.§??§.height;
         this.§??§.width = param1 + 600 / _loc3_;
         this.§??§.height = param2 + 600 / _loc3_;
      }
   }
}
