package §7M§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §case §
   {
       
      
      public var §;o§:BitmapData = null;
      
      public var §"!m§:String = null;
      
      public var §!§:Number = 0;
      
      public var §8!q§:Number = 0;
      
      public var §^x§:Number = 0;
      
      public var §7!!§:Number = 0;
      
      public var § 8§:Number = 0;
      
      public var §#t§:String = null;
      
      public var §%n§:String = null;
      
      public var §#E§:String = null;
      
      public var §=!b§:String = null;
      
      private var §7!V§:String = null;
      
      public var §4""§:String = null;
      
      public var §[p§:Sprite = null;
      
      public function §case §()
      {
         super();
         this.§[p§ = new Sprite();
      }
      
      public static function §0o§(param1:Object) : §case §
      {
         var _loc2_:§case § = new §case §();
         _loc2_.§"!m§ = param1.id;
         _loc2_.§!§ = param1.publishTime;
         _loc2_.§8!q§ = param1.numRatings;
         _loc2_.§^x§ = param1.numStars;
         _loc2_.§7!!§ = param1.numCompleted;
         _loc2_.§ 8§ = param1.highscore;
         _loc2_.§#t§ = param1.topScorer;
         _loc2_.§%n§ = param1.topScorerName;
         _loc2_.§#E§ = param1.author;
         _loc2_.§=!b§ = param1.authorId;
         _loc2_.§7!V§ = param1.name;
         _loc2_.§4""§ = param1.description;
         return _loc2_;
      }
      
      public static function §;e§(param1:String) : §case §
      {
         var _loc2_:§case § = new §case §();
         _loc2_.§"!m§ = param1;
         return _loc2_;
      }
      
      public function §`!?§(param1:Bitmap) : void
      {
         this.§;o§ = param1.bitmapData;
         this.§[p§.addChild(param1);
      }
      
      public function §`!!§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §1d§() : String
      {
         if(this.§7!V§ != null)
         {
            return this.§7!V§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§"!m§;
      }
      
      public function get author() : String
      {
         return this.§#E§ != null ? this.§#E§ : "";
      }
      
      public function get §^!M§() : BitmapData
      {
         return this.§;o§;
      }
      
      public function get authorId() : String
      {
         return this.§=!b§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§[p§;
      }
   }
}
