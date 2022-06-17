package §4#O§
{
   public class §="j§
   {
       
      
      private var mId:String;
      
      private var §,§:String;
      
      private var §&!2§:String;
      
      private var §-"-§:String;
      
      private var §0!h§:String;
      
      private var §]=§:String;
      
      private var §0"u§:Boolean;
      
      private var §-!O§:String;
      
      private var §&"&§:String;
      
      private var §-!b§:Boolean;
      
      private var §^"i§:int;
      
      private var §1#M§:Vector.<§-#§>;
      
      private var §4!§:Number;
      
      public function §="j§(param1:String)
      {
         super();
         this.mId = param1;
      }
      
      public function §&#8§(param1:Object) : void
      {
         var _loc3_:§-#§ = null;
         this.§,§ = param1.title;
         this.§&!2§ = param1.imageRef;
         this.§-"-§ = param1.imageUrl;
         this.§0!h§ = param1.action;
         this.§]=§ = param1.text;
         this.§0"u§ = param1.t;
         this.§-!O§ = !!param1.notificationName ? param1.notificationName : "";
         this.§&"&§ = param1.layoutType;
         this.§-!b§ = param1.enabledCloseButton;
         this.§1#M§ = new Vector.<§-#§>();
         this.§4!§ = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §-#§.§1"U§.length)
         {
            if(param1[§-#§.§1"U§[_loc2_] + "Enabled"] == true)
            {
               _loc3_ = new §-#§("" + (_loc2_ + 1),this.§-!O§,param1[§-#§.§1"U§[_loc2_] + "ActionType"],param1[§-#§.§1"U§[_loc2_] + "Color"],param1[§-#§.§1"U§[_loc2_] + "Text"],param1[§-#§.§1"U§[_loc2_] + "Url"],param1[§-#§.§1"U§[_loc2_] + "Size"]);
               this.§4!§ += _loc3_.§""V§();
               this.§1#M§.push(_loc3_);
            }
            _loc2_++;
         }
         this.§^"i§ = !!param1.fontSize ? int(param1.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.§0!h§;
      }
      
      public function get imageRef() : String
      {
         return this.§&!2§;
      }
      
      public function get §%"p§() : String
      {
         return this.§-"-§;
      }
      
      public function get title() : String
      {
         return this.§,§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.§]=§;
      }
      
      public function get §^v§() : Boolean
      {
         return this.§0"u§;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function get layoutType() : String
      {
         return this.§&"&§;
      }
      
      public function get §%"`§() : Boolean
      {
         return this.§-!b§;
      }
      
      public function get fontSize() : int
      {
         return this.§^"i§;
      }
      
      public function get §8$-§() : Vector.<§-#§>
      {
         return this.§1#M§;
      }
      
      public function §1z§() : Number
      {
         return this.§4!§;
      }
   }
}
