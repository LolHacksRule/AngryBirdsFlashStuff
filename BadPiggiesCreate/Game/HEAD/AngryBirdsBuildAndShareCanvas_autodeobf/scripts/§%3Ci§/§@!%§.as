package §<i§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §@!%§
   {
       
      
      public var §&G§:BitmapData = null;
      
      public var §&&§:String = null;
      
      public var § b§:Number = 0;
      
      public var §8D§:Number = 0;
      
      public var §<"<§:Number = 0;
      
      public var §<M§:Number = 0;
      
      public var §2!7§:Number = 0;
      
      public var §>!i§:String = null;
      
      public var §[I§:String = null;
      
      public var §7!2§:String = null;
      
      public var §2^§:String = null;
      
      private var §?]§:String = null;
      
      public var §]B§:String = null;
      
      public var §1k§:Sprite = null;
      
      public function §@!%§()
      {
         super();
         this.§1k§ = new Sprite();
      }
      
      public static function §,!W§(param1:Object) : §@!%§
      {
         var _loc2_:§@!%§ = new §@!%§();
         _loc2_.§&&§ = param1.id;
         _loc2_.§ b§ = param1.publishTime;
         _loc2_.§8D§ = param1.numRatings;
         _loc2_.§<"<§ = param1.numStars;
         _loc2_.§<M§ = param1.numCompleted;
         _loc2_.§2!7§ = param1.highscore;
         _loc2_.§>!i§ = param1.topScorer;
         _loc2_.§[I§ = param1.topScorerName;
         _loc2_.§7!2§ = param1.author;
         _loc2_.§2^§ = param1.authorId;
         _loc2_.§?]§ = param1.name;
         _loc2_.§]B§ = param1.description;
         return _loc2_;
      }
      
      public static function §[2§(param1:String) : §@!%§
      {
         var _loc2_:§@!%§ = new §@!%§();
         _loc2_.§&&§ = param1;
         return _loc2_;
      }
      
      public function §+x§(param1:Bitmap) : void
      {
         this.§&G§ = param1.bitmapData;
         this.§1k§.addChild(param1);
      }
      
      public function §6!C§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §%!d§() : String
      {
         if(this.§?]§ != null)
         {
            return this.§?]§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§&&§;
      }
      
      public function get author() : String
      {
         return this.§7!2§ != null ? this.§7!2§ : "";
      }
      
      public function get §%X§() : BitmapData
      {
         return this.§&G§;
      }
      
      public function get authorId() : String
      {
         return this.§2^§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§1k§;
      }
   }
}
