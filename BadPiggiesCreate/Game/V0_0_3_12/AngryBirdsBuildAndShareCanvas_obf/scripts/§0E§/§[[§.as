package §0E§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §[[§
   {
       
      
      public var §`S§:BitmapData = null;
      
      public var §2!u§:String = null;
      
      public var §2!k§:Number = 0;
      
      public var §`F§:Number = 0;
      
      public var §#!m§:Number = 0;
      
      public var §0K§:Number = 0;
      
      public var §var§:Number = 0;
      
      public var §@!y§:String = null;
      
      public var §^!7§:String = null;
      
      public var §3!@§:String = null;
      
      public var §4N§:String = null;
      
      private var §-z§:String = null;
      
      public var §1!3§:String = null;
      
      public var §>M§:Sprite = null;
      
      public function §[[§()
      {
         super();
         this.§>M§ = new Sprite();
      }
      
      public static function §-t§(param1:Object) : §[[§
      {
         var _loc2_:§[[§ = new §[[§();
         _loc2_.§2!u§ = param1.id;
         _loc2_.§2!k§ = param1.publishTime;
         _loc2_.§`F§ = param1.numRatings;
         _loc2_.§#!m§ = param1.numStars;
         _loc2_.§0K§ = param1.numCompleted;
         _loc2_.§var§ = param1.highscore;
         _loc2_.§@!y§ = param1.topScorer;
         _loc2_.§^!7§ = param1.topScorerName;
         _loc2_.§3!@§ = param1.author;
         _loc2_.§4N§ = param1.authorId;
         _loc2_.§-z§ = param1.name;
         _loc2_.§1!3§ = param1.description;
         return _loc2_;
      }
      
      public static function §&T§(param1:String) : §[[§
      {
         var _loc2_:§[[§ = new §[[§();
         _loc2_.§2!u§ = param1;
         return _loc2_;
      }
      
      public function §"4§(param1:Bitmap) : void
      {
         this.§`S§ = param1.bitmapData;
         this.§>M§.addChild(param1);
      }
      
      public function §5!e§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §=Z§() : String
      {
         if(this.§-z§ != null)
         {
            return this.§-z§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§2!u§;
      }
      
      public function get author() : String
      {
         return this.§3!@§ != null ? this.§3!@§ : "";
      }
      
      public function get §4-§() : BitmapData
      {
         return this.§`S§;
      }
      
      public function get authorId() : String
      {
         return this.§4N§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§>M§;
      }
   }
}
