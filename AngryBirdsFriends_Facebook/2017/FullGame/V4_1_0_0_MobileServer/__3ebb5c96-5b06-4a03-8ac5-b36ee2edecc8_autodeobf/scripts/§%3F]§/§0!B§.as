package §?]§
{
   public class §0!B§
   {
       
      
      private var mId:String;
      
      private var §<"a§:String;
      
      private var §+1§:String;
      
      private var §%!3§:String;
      
      private var §!B§:String;
      
      private var §0"]§:String;
      
      private var §2#9§:Boolean;
      
      private var §;!p§:String;
      
      private var §-"c§:String;
      
      private var §,!%§:Boolean;
      
      private var §<"R§:int;
      
      private var §3"f§:Vector.<§[!y§>;
      
      private var §>!2§:Number;
      
      public function §0!B§(param1:String)
      {
         super();
         this.mId = param1;
      }
      
      public function §1#M§(param1:Object) : void
      {
         var _loc3_:§[!y§ = null;
         this.§<"a§ = param1.title;
         this.§+1§ = param1.imageRef;
         this.§%!3§ = param1.imageUrl;
         this.§!B§ = param1.action;
         this.§0"]§ = param1.text;
         this.§2#9§ = param1.t;
         this.§;!p§ = !!param1.notificationName ? param1.notificationName : "";
         this.§-"c§ = param1.layoutType;
         this.§,!%§ = param1.enabledCloseButton;
         this.§3"f§ = new Vector.<§[!y§>();
         this.§>!2§ = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §[!y§.§<"r§.length)
         {
            if(param1[§[!y§.§<"r§[_loc2_] + "Enabled"] == true)
            {
               _loc3_ = new §[!y§("" + (_loc2_ + 1),this.§;!p§,param1[§[!y§.§<"r§[_loc2_] + "ActionType"],param1[§[!y§.§<"r§[_loc2_] + "Color"],param1[§[!y§.§<"r§[_loc2_] + "Text"],param1[§[!y§.§<"r§[_loc2_] + "Url"],param1[§[!y§.§<"r§[_loc2_] + "Size"]);
               this.§>!2§ += _loc3_.§,#Y§();
               this.§3"f§.push(_loc3_);
            }
            _loc2_++;
         }
         this.§<"R§ = !!param1.fontSize ? int(param1.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.§!B§;
      }
      
      public function get imageRef() : String
      {
         return this.§+1§;
      }
      
      public function get §3!2§() : String
      {
         return this.§%!3§;
      }
      
      public function get title() : String
      {
         return this.§<"a§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.§0"]§;
      }
      
      public function get §+#v§() : Boolean
      {
         return this.§2#9§;
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function get layoutType() : String
      {
         return this.§-"c§;
      }
      
      public function get §6#O§() : Boolean
      {
         return this.§,!%§;
      }
      
      public function get fontSize() : int
      {
         return this.§<"R§;
      }
      
      public function get §0!z§() : Vector.<§[!y§>
      {
         return this.§3"f§;
      }
      
      public function §=$,§() : Number
      {
         return this.§>!2§;
      }
   }
}
