package §'!O§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §<a§
   {
       
      
      public var §`=§:BitmapData = null;
      
      public var §#`§:String = null;
      
      public var §4;§:Number = 0;
      
      public var §!w§:Number = 0;
      
      public var §3f§:Number = 0;
      
      public var §-!W§:Number = 0;
      
      public var §?L§:Number = 0;
      
      public var §`!D§:String = null;
      
      public var §8!D§:String = null;
      
      public var §@I§:String = null;
      
      public var §,u§:String = null;
      
      private var §8f§:String = null;
      
      public var §53§:String = null;
      
      public var §!1§:Sprite = null;
      
      public function §<a§()
      {
         super();
         this.§!1§ = new Sprite();
      }
      
      public static function §&c§(param1:Object) : §<a§
      {
         var _loc2_:§<a§ = new §<a§();
         _loc2_.§#`§ = param1.id;
         _loc2_.§4;§ = param1.publishTime;
         _loc2_.§!w§ = param1.numRatings;
         _loc2_.§3f§ = param1.numStars;
         _loc2_.§-!W§ = param1.numCompleted;
         _loc2_.§?L§ = param1.highscore;
         _loc2_.§`!D§ = param1.topScorer;
         _loc2_.§8!D§ = param1.topScorerName;
         _loc2_.§@I§ = param1.author;
         _loc2_.§,u§ = param1.authorId;
         _loc2_.§8f§ = param1.name;
         _loc2_.§53§ = param1.description;
         return _loc2_;
      }
      
      public static function §2!f§(param1:String) : §<a§
      {
         var _loc2_:§<a§ = new §<a§();
         _loc2_.§#`§ = param1;
         return _loc2_;
      }
      
      public function §%g§(param1:Bitmap) : void
      {
         this.§`=§ = param1.bitmapData;
         this.§!1§.addChild(param1);
      }
      
      public function §5§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §0!7§() : String
      {
         if(this.§8f§ != null)
         {
            return this.§8f§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§#`§;
      }
      
      public function get author() : String
      {
         return this.§@I§ != null ? this.§@I§ : "";
      }
      
      public function get §;!^§() : BitmapData
      {
         return this.§`=§;
      }
      
      public function get authorId() : String
      {
         return this.§,u§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§!1§;
      }
   }
}
