package §+%§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §#!,§
   {
       
      
      public var §7!6§:BitmapData = null;
      
      public var §52§:String = null;
      
      public var §5_§:Number = 0;
      
      public var §!!e§:Number = 0;
      
      public var §7"1§:Number = 0;
      
      public var §0_§:Number = 0;
      
      public var §0!H§:Number = 0;
      
      public var §&!&§:String = null;
      
      public var §&!0§:String = null;
      
      public var §@!?§:String = null;
      
      public var § K§:String = null;
      
      private var §`!2§:String = null;
      
      public var §]!=§:String = null;
      
      public var §6F§:Sprite = null;
      
      public function §#!,§()
      {
         super();
         this.§6F§ = new Sprite();
      }
      
      public static function §="#§(param1:Object) : §#!,§
      {
         var _loc2_:§#!,§ = new §#!,§();
         _loc2_.§52§ = param1.id;
         _loc2_.§5_§ = param1.publishTime;
         _loc2_.§!!e§ = param1.numRatings;
         _loc2_.§7"1§ = param1.numStars;
         _loc2_.§0_§ = param1.numCompleted;
         _loc2_.§0!H§ = param1.highscore;
         _loc2_.§&!&§ = param1.topScorer;
         _loc2_.§&!0§ = param1.topScorerName;
         _loc2_.§@!?§ = param1.author;
         _loc2_.§ K§ = param1.authorId;
         _loc2_.§`!2§ = param1.name;
         _loc2_.§]!=§ = param1.description;
         return _loc2_;
      }
      
      public static function §[2§(param1:String) : §#!,§
      {
         var _loc2_:§#!,§ = new §#!,§();
         _loc2_.§52§ = param1;
         return _loc2_;
      }
      
      public function §2!Q§(param1:Bitmap) : void
      {
         this.§7!6§ = param1.bitmapData;
         this.§6F§.addChild(param1);
      }
      
      public function §<A§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §"f§() : String
      {
         if(this.§`!2§ != null)
         {
            return this.§`!2§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§52§;
      }
      
      public function get author() : String
      {
         return this.§@!?§ != null ? this.§@!?§ : "";
      }
      
      public function get §1H§() : BitmapData
      {
         return this.§7!6§;
      }
      
      public function get authorId() : String
      {
         return this.§ K§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§6F§;
      }
   }
}
