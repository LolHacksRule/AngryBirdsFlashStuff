package §-!0§
{
   import §8!Q§.§<!R§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §0!k§
   {
       
      
      public var §19§:BitmapData = null;
      
      public var §%I§:String = null;
      
      public var §"§:Number = 0;
      
      public var §09§:Number = 0;
      
      public var §?h§:Number = 0;
      
      public var § "§:Number = 0;
      
      public var §37§:Number = 0;
      
      public var §-g§:String = null;
      
      public var §7G§:String = null;
      
      public var §%e§:String = null;
      
      public var §1!L§:String = null;
      
      private var §-6§:String = null;
      
      public var §`l§:String = null;
      
      public var §!!k§:Sprite = null;
      
      public function §0!k§()
      {
         super();
         this.§!!k§ = new Sprite();
      }
      
      public static function §7!`§(param1:Object) : §0!k§
      {
         var _loc3_:Loader = null;
         var _loc2_:§0!k§ = new §0!k§();
         if((param1.thumbnail as String).indexOf("data:image/png;base64") != -1)
         {
            §<!R§.§,7§(param1.thumbnail,_loc2_.§6!q§);
         }
         else
         {
            _loc3_ = new Loader();
            _loc3_.contentLoaderInfo.addEventListener(Event.COMPLETE,_loc2_.§=!B§);
            _loc3_.load(new URLRequest(param1.thumbnail));
         }
         _loc2_.§%I§ = param1.id;
         _loc2_.§"§ = param1.publishTime;
         _loc2_.§09§ = param1.numRatings;
         _loc2_.§?h§ = param1.numStars;
         _loc2_.§ "§ = param1.numCompleted;
         _loc2_.§37§ = param1.highscore;
         _loc2_.§-g§ = param1.topScorer;
         _loc2_.§7G§ = param1.topScorerName;
         _loc2_.§%e§ = param1.author;
         _loc2_.§1!L§ = param1.authorId;
         _loc2_.§-6§ = param1.name;
         _loc2_.§`l§ = param1.description;
         return _loc2_;
      }
      
      public static function §=!O§(param1:String) : §0!k§
      {
         var _loc2_:§0!k§ = new §0!k§();
         _loc2_.§%I§ = param1;
         return _loc2_;
      }
      
      public function §6!q§(param1:Bitmap) : void
      {
         this.§19§ = param1.bitmapData;
         this.§!!k§.addChild(param1);
      }
      
      public function §=!B§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §'!#§() : String
      {
         if(this.§-6§ != null)
         {
            return this.§-6§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§%I§;
      }
      
      public function get author() : String
      {
         return this.§%e§ != null ? this.§%e§ : "";
      }
      
      public function get §`^§() : BitmapData
      {
         return this.§19§;
      }
      
      public function get authorId() : String
      {
         return this.§1!L§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§!!k§;
      }
   }
}
