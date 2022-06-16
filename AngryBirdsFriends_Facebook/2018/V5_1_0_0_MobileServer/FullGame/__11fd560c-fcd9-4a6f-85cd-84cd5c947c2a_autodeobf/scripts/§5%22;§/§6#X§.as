package §5";§
{
   public class §6#X§
   {
       
      
      private var mId:String;
      
      private var §&2§:String;
      
      private var §&<§:String;
      
      private var §90§:String;
      
      private var §?m§:String;
      
      private var §'7§:String;
      
      private var §`!_§:Boolean;
      
      private var §=q§:String;
      
      private var §="o§:String;
      
      private var §2#X§:Boolean;
      
      private var §0"$§:int;
      
      private var §#!7§:Vector.<§ !N§>;
      
      private var §5!A§:Number;
      
      public function §6#X§(param1:String)
      {
         super();
         this.mId = param1;
      }
      
      public function §'"3§(param1:Object) : void
      {
         var _loc3_:§ !N§ = null;
         this.§&2§ = param1.title;
         this.§&<§ = param1.imageRef;
         this.§90§ = param1.imageUrl;
         this.§?m§ = param1.action;
         this.§'7§ = param1.text;
         this.§`!_§ = param1.t;
         this.§=q§ = !!param1.notificationName ? param1.notificationName : "";
         this.§="o§ = param1.layoutType;
         this.§2#X§ = param1.enabledCloseButton;
         this.§#!7§ = new Vector.<§ !N§>();
         this.§5!A§ = 0;
         var _loc2_:int = 0;
         while(_loc2_ < § !N§.§9#_§.length)
         {
            if(param1[§ !N§.§9#_§[_loc2_] + "Enabled"] == true)
            {
               _loc3_ = new § !N§("" + (_loc2_ + 1),this.§=q§,param1[§ !N§.§9#_§[_loc2_] + "ActionType"],param1[§ !N§.§9#_§[_loc2_] + "Color"],param1[§ !N§.§9#_§[_loc2_] + "Text"],param1[§ !N§.§9#_§[_loc2_] + "Url"],param1[§ !N§.§9#_§[_loc2_] + "Size"]);
               this.§5!A§ += _loc3_.§&!T§();
               this.§#!7§.push(_loc3_);
            }
            _loc2_++;
         }
         this.§0"$§ = !!param1.fontSize ? int(param1.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.§?m§;
      }
      
      public function get imageRef() : String
      {
         return this.§&<§;
      }
      
      public function get §4!N§() : String
      {
         return this.§90§;
      }
      
      public function get title() : String
      {
         return this.§&2§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.§'7§;
      }
      
      public function get §%#9§() : Boolean
      {
         return this.§`!_§;
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function get layoutType() : String
      {
         return this.§="o§;
      }
      
      public function get §0#&§() : Boolean
      {
         return this.§2#X§;
      }
      
      public function get fontSize() : int
      {
         return this.§0"$§;
      }
      
      public function get §%#^§() : Vector.<§ !N§>
      {
         return this.§#!7§;
      }
      
      public function §0#$§() : Number
      {
         return this.§5!A§;
      }
   }
}
