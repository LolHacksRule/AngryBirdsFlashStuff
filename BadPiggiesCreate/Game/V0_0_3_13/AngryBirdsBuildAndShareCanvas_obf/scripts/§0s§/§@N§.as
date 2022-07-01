package §0s§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §@N§
   {
       
      
      public var §+5§:BitmapData = null;
      
      public var §0!d§:String = null;
      
      public var §for§:Number = 0;
      
      public var §3!j§:Number = 0;
      
      public var §'V§:Number = 0;
      
      public var §-!l§:Number = 0;
      
      public var §8!]§:Number = 0;
      
      public var §]M§:String = null;
      
      public var §7b§:String = null;
      
      public var §&!L§:String = null;
      
      public var §'X§:String = null;
      
      private var §0W§:String = null;
      
      public var §?!Y§:String = null;
      
      public var §,"-§:Sprite = null;
      
      public function §@N§()
      {
         super();
         this.§,"-§ = new Sprite();
      }
      
      public static function §<'§(param1:Object) : §@N§
      {
         var _loc2_:§@N§ = new §@N§();
         _loc2_.§0!d§ = param1.id;
         _loc2_.§for§ = param1.publishTime;
         _loc2_.§3!j§ = param1.numRatings;
         _loc2_.§'V§ = param1.numStars;
         _loc2_.§-!l§ = param1.numCompleted;
         _loc2_.§8!]§ = param1.highscore;
         _loc2_.§]M§ = param1.topScorer;
         _loc2_.§7b§ = param1.topScorerName;
         _loc2_.§&!L§ = param1.author;
         _loc2_.§'X§ = param1.authorId;
         _loc2_.§0W§ = param1.name;
         _loc2_.§?!Y§ = param1.description;
         return _loc2_;
      }
      
      public static function §,P§(param1:String) : §@N§
      {
         var _loc2_:§@N§ = new §@N§();
         _loc2_.§0!d§ = param1;
         return _loc2_;
      }
      
      public function §`p§(param1:Bitmap) : void
      {
         this.§+5§ = param1.bitmapData;
         this.§,"-§.addChild(param1);
      }
      
      public function §<+§(param1:Event) : void
      {
         this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
      }
      
      public function get §!8§() : String
      {
         if(this.§0W§ != null)
         {
            return this.§0W§;
         }
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§0!d§;
      }
      
      public function get author() : String
      {
         return this.§&!L§ != null ? this.§&!L§ : "";
      }
      
      public function get §?! §() : BitmapData
      {
         return this.§+5§;
      }
      
      public function get authorId() : String
      {
         return this.§'X§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§,"-§;
      }
   }
}
