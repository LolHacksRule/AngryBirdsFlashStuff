package §6!&§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §6V§
   {
       
      
      public var §`!R§:BitmapData = null;
      
      public var §]!Q§:String = null;
      
      public var §=!'§:Number = 0;
      
      public var §1_§:Number = 0;
      
      public var §7x§:Number = 0;
      
      public var §`&§:Number = 0;
      
      public var §3e§:Number = 0;
      
      public var §%+§:String = null;
      
      public var §=[§:String = null;
      
      public var §^!n§:String = null;
      
      public var §>4§:String = null;
      
      private var §]!f§:String = null;
      
      public var §5!-§:String = null;
      
      public var §5!1§:Sprite = null;
      
      public function §6V§()
      {
         super();
         this.§5!1§ = new Sprite();
      }
      
      public static function §6h§(param1:Object) : §6V§
      {
         var _loc2_:§6V§ = new §6V§();
         _loc2_.§]!Q§ = param1.id;
         _loc2_.§=!'§ = param1.publishTime;
         _loc2_.§1_§ = param1.numRatings;
         _loc2_.§7x§ = param1.numStars;
         _loc2_.§`&§ = param1.numCompleted;
         _loc2_.§3e§ = param1.highscore;
         _loc2_.§%+§ = param1.topScorer;
         _loc2_.§=[§ = param1.topScorerName;
         _loc2_.§^!n§ = param1.author;
         _loc2_.§>4§ = param1.authorId;
         _loc2_.§]!f§ = param1.name;
         _loc2_.§5!-§ = param1.description;
         return _loc2_;
      }
      
      public static function §9O§(param1:String) : §6V§
      {
         var _loc2_:§6V§ = new §6V§();
         _loc2_.§]!Q§ = param1;
         return _loc2_;
      }
      
      public function §24§(param1:Bitmap) : void
      {
         this.§`!R§ = param1.bitmapData;
         this.§5!1§.addChild(param1);
      }
      
      public function §0"§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §73§() : String
      {
         if(this.§]!f§ != null)
         {
            return this.§]!f§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§]!Q§;
      }
      
      public function get author() : String
      {
         return this.§^!n§ != null ? this.§^!n§ : "";
      }
      
      public function get §50§() : BitmapData
      {
         return this.§`!R§;
      }
      
      public function get authorId() : String
      {
         return this.§>4§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§5!1§;
      }
   }
}
