package §>!!§
{
   public class §<#^§
   {
       
      
      private var mId:String;
      
      private var §7![§:String;
      
      private var §^#!§:String;
      
      private var §4!<§:String;
      
      private var §6#b§:String;
      
      private var §7#A§:String;
      
      private var §^"Y§:Boolean;
      
      private var §&$"§:String;
      
      private var §!#q§:String;
      
      private var § null§:Boolean;
      
      private var §@e§:int;
      
      private var §=#Q§:Vector.<§,!d§>;
      
      private var §4#]§:Number;
      
      public function §<#^§(param1:String)
      {
         super();
         this.mId = param1;
      }
      
      public function §9!$§(param1:Object) : void
      {
         var _loc3_:§,!d§ = null;
         this.§7![§ = param1.title;
         this.§^#!§ = param1.imageRef;
         this.§4!<§ = param1.imageUrl;
         this.§6#b§ = param1.action;
         this.§7#A§ = param1.text;
         this.§^"Y§ = param1.t;
         this.§&$"§ = !!param1.notificationName ? param1.notificationName : "";
         this.§!#q§ = param1.layoutType;
         this.§ null§ = param1.enabledCloseButton;
         this.§=#Q§ = new Vector.<§,!d§>();
         this.§4#]§ = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §,!d§.§]!+§.length)
         {
            if(param1[§,!d§.§]!+§[_loc2_] + "Enabled"] == true)
            {
               _loc3_ = new §,!d§("" + (_loc2_ + 1),this.§&$"§,param1[§,!d§.§]!+§[_loc2_] + "ActionType"],param1[§,!d§.§]!+§[_loc2_] + "Color"],param1[§,!d§.§]!+§[_loc2_] + "Text"],param1[§,!d§.§]!+§[_loc2_] + "Url"],param1[§,!d§.§]!+§[_loc2_] + "Size"]);
               this.§4#]§ += _loc3_.§5!c§();
               this.§=#Q§.push(_loc3_);
            }
            _loc2_++;
         }
         this.§@e§ = !!param1.fontSize ? int(param1.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.§6#b§;
      }
      
      public function get imageRef() : String
      {
         return this.§^#!§;
      }
      
      public function get §-"2§() : String
      {
         return this.§4!<§;
      }
      
      public function get title() : String
      {
         return this.§7![§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.§7#A§;
      }
      
      public function get §?"2§() : Boolean
      {
         return this.§^"Y§;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function get layoutType() : String
      {
         return this.§!#q§;
      }
      
      public function get §@#%§() : Boolean
      {
         return this.§ null§;
      }
      
      public function get fontSize() : int
      {
         return this.§@e§;
      }
      
      public function get §1"n§() : Vector.<§,!d§>
      {
         return this.§=#Q§;
      }
      
      public function §2"I§() : Number
      {
         return this.§4#]§;
      }
   }
}
