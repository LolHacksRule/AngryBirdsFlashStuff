package §40§
{
   import §;!y§.§,!s§;
   import §`g§.§ O§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §,!F§ extends Sprite
   {
       
      
      protected var §"w§:Sprite;
      
      protected var §69§:DisplayObject;
      
      protected var §<!A§:Sprite;
      
      public function §,!F§()
      {
         super();
         addChild(this.§<!A§ = new Sprite());
         this.§<!A§.addChild(this.§"w§ = new Sprite());
         this.§69§ = new § O§(2,2,0);
         this.§69§.width = §,!s§.§!"#§;
         this.§69§.height = §,!s§.§8p§;
         addChild(this.§69§);
         this.§69§.alpha = 0.5;
      }
      
      public function get §1M§() : Sprite
      {
         return this.§"w§;
      }
      
      public function get §,!n§() : DisplayObject
      {
         return this.§69§;
      }
      
      public function get §75§() : Sprite
      {
         return this.§<!A§;
      }
      
      public function §[8§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§69§.width / this.§69§.height;
         this.§69§.width = param1 + 600 / _loc3_;
         this.§69§.height = param2 + 600 / _loc3_;
      }
   }
}
