package §1!3§
{
   public class §!#1§
   {
       
      
      private var mId:String;
      
      private var §0?§:String;
      
      private var §7W§:String;
      
      private var §?K§:String;
      
      private var §3#W§:String;
      
      private var § &§:String;
      
      private var §4!!§:Boolean;
      
      private var §!I§:String;
      
      private var §-!#§:String;
      
      private var §!!O§:Boolean;
      
      private var §+!u§:int;
      
      private var §[">§:Vector.<§in §>;
      
      private var §'#e§:Number;
      
      public function §!#1§(param1:String)
      {
         super();
         this.mId = param1;
      }
      
      public function §!!R§(param1:Object) : void
      {
         var _loc3_:§in § = null;
         this.§0?§ = param1.title;
         this.§7W§ = param1.imageRef;
         this.§?K§ = param1.imageUrl;
         this.§3#W§ = param1.action;
         this.§ &§ = param1.text;
         this.§4!!§ = param1.t;
         this.§!I§ = !!param1.notificationName ? param1.notificationName : "";
         this.§-!#§ = param1.layoutType;
         this.§!!O§ = param1.enabledCloseButton;
         this.§[">§ = new Vector.<§in §>();
         this.§'#e§ = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §in §.§]#R§.length)
         {
            if(param1[§in §.§]#R§[_loc2_] + "Enabled"] == true)
            {
               _loc3_ = new §in §("" + (_loc2_ + 1),this.§!I§,param1[§in §.§]#R§[_loc2_] + "ActionType"],param1[§in §.§]#R§[_loc2_] + "Color"],param1[§in §.§]#R§[_loc2_] + "Text"],param1[§in §.§]#R§[_loc2_] + "Url"],param1[§in §.§]#R§[_loc2_] + "Size"]);
               this.§'#e§ += _loc3_.§7$A§();
               this.§[">§.push(_loc3_);
            }
            _loc2_++;
         }
         this.§+!u§ = !!param1.fontSize ? int(param1.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.§3#W§;
      }
      
      public function get imageRef() : String
      {
         return this.§7W§;
      }
      
      public function get §!"H§() : String
      {
         return this.§?K§;
      }
      
      public function get title() : String
      {
         return this.§0?§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.§ &§;
      }
      
      public function get §=$7§() : Boolean
      {
         return this.§4!!§;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function get layoutType() : String
      {
         return this.§-!#§;
      }
      
      public function get §&!I§() : Boolean
      {
         return this.§!!O§;
      }
      
      public function get fontSize() : int
      {
         return this.§+!u§;
      }
      
      public function get §"#U§() : Vector.<§in §>
      {
         return this.§[">§;
      }
      
      public function §>$!§() : Number
      {
         return this.§'#e§;
      }
   }
}
