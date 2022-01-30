package §]k§
{
   import §,!q§.§#!H§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import com.angrybirds.§6!E§;
   
   public class §^8§ extends Sprite
   {
       
      
      protected var §3"3§:Sprite;
      
      protected var §^!]§:DisplayObject;
      
      protected var §=!X§:Sprite;
      
      public function §^8§()
      {
         super();
         addChild(this.§=!X§ = new Sprite());
         this.§=!X§.addChild(this.§3"3§ = new Sprite());
         this.§^!]§ = new §#!H§(2,2,0);
         this.§^!]§.width = §6!E§.§#9§;
         this.§^!]§.height = §6!E§.§<N§;
         addChild(this.§^!]§);
         this.§^!]§.alpha = 0.5;
      }
      
      public function get §;",§() : Sprite
      {
         return this.§3"3§;
      }
      
      public function get §8l§() : DisplayObject
      {
         return this.§^!]§;
      }
      
      public function get §1!t§() : Sprite
      {
         return this.§=!X§;
      }
      
      public function §8!t§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§^!]§.width / this.§^!]§.height;
         this.§^!]§.width = param1 + 600 / _loc3_;
         this.§^!]§.height = param2 + 600 / _loc3_;
      }
   }
}
