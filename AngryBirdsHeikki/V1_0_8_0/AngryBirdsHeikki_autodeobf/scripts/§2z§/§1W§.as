package §2z§
{
   import §#!T§.§&2§;
   import §=!E§.§,!@§;
   import §=!E§.DisplayObject;
   import §=!E§.Sprite;
   
   public class §1W§ extends Sprite
   {
       
      
      protected var §'!<§:Sprite;
      
      protected var §5,§:DisplayObject;
      
      protected var §%+§:Sprite;
      
      public function §1W§()
      {
         super();
         addChild(this.§%+§ = new Sprite());
         this.§%+§.addChild(this.§'!<§ = new Sprite());
         this.§5,§ = new §,!@§(2,2,0);
         this.§5,§.width = §&2§.§8!G§;
         this.§5,§.height = §&2§.§>!?§;
         addChild(this.§5,§);
         this.§5,§.alpha = 0.5;
      }
      
      public function get §+!`§() : Sprite
      {
         return this.§'!<§;
      }
      
      public function get §6!R§() : DisplayObject
      {
         return this.§5,§;
      }
      
      public function get §9I§() : Sprite
      {
         return this.§%+§;
      }
      
      public function §2!3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§5,§.width / this.§5,§.height;
         this.§5,§.width = param1 + 600 / _loc3_;
         this.§5,§.height = param2 + 600 / _loc3_;
      }
   }
}
