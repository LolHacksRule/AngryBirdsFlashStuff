package §"v§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §%=§
   {
       
      
      public var §8!7§:BitmapData = null;
      
      public var §"E§:String = null;
      
      public var §8b§:Number = 0;
      
      public var §-!A§:Number = 0;
      
      public var §&"1§:Number = 0;
      
      public var §,!n§:Number = 0;
      
      public var §[Z§:Number = 0;
      
      public var §9!#§:String = null;
      
      public var §3!y§:String = null;
      
      public var §-r§:String = null;
      
      public var §-b§:String = null;
      
      private var §#!§:String = null;
      
      public var §9!7§:String = null;
      
      public var §]!Q§:Sprite = null;
      
      public function §%=§()
      {
         super();
         this.§]!Q§ = new Sprite();
      }
      
      public static function §`!S§(param1:Object) : §%=§
      {
         var _loc2_:§%=§ = new §%=§();
         _loc2_.§"E§ = param1.id;
         _loc2_.§8b§ = param1.publishTime;
         _loc2_.§-!A§ = param1.numRatings;
         _loc2_.§&"1§ = param1.numStars;
         _loc2_.§,!n§ = param1.numCompleted;
         _loc2_.§[Z§ = param1.highscore;
         _loc2_.§9!#§ = param1.topScorer;
         _loc2_.§3!y§ = param1.topScorerName;
         _loc2_.§-r§ = param1.author;
         _loc2_.§-b§ = param1.authorId;
         _loc2_.§#!§ = param1.name;
         _loc2_.§9!7§ = param1.description;
         return _loc2_;
      }
      
      public static function §7!`§(param1:String) : §%=§
      {
         var _loc2_:§%=§ = new §%=§();
         _loc2_.§"E§ = param1;
         return _loc2_;
      }
      
      public function §1"<§(param1:Bitmap) : void
      {
         this.§8!7§ = param1.bitmapData;
         this.§]!Q§.addChild(param1);
      }
      
      public function § M§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §;!^§() : String
      {
         if(this.§#!§ != null)
         {
            return this.§#!§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§"E§;
      }
      
      public function get author() : String
      {
         return this.§-r§ != null ? this.§-r§ : "";
      }
      
      public function get §'!V§() : BitmapData
      {
         return this.§8!7§;
      }
      
      public function get authorId() : String
      {
         return this.§-b§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§]!Q§;
      }
   }
}
