package §[!;§
{
   public class §<#a§
   {
       
      
      private var mId:String;
      
      private var §%!5§:String;
      
      private var §]!i§:String;
      
      private var §>!;§:String;
      
      private var §3!g§:String;
      
      private var §!"l§:String;
      
      private var §3!t§:Boolean;
      
      private var §-#3§:String;
      
      private var §3$'§:String;
      
      private var §2T§:Boolean;
      
      private var §,#R§:int;
      
      private var §'![§:Vector.<§[">§>;
      
      private var §@#c§:Number;
      
      public function §<#a§(param1:String)
      {
         super();
         this.mId = param1;
      }
      
      public function §9!§(param1:Object) : void
      {
         var _loc3_:§[">§ = null;
         this.§%!5§ = param1.title;
         this.§]!i§ = param1.imageRef;
         this.§>!;§ = param1.imageUrl;
         this.§3!g§ = param1.action;
         this.§!"l§ = param1.text;
         this.§3!t§ = param1.t;
         this.§-#3§ = !!param1.notificationName ? param1.notificationName : "";
         this.§3$'§ = param1.layoutType;
         this.§2T§ = param1.enabledCloseButton;
         this.§'![§ = new Vector.<§[">§>();
         this.§@#c§ = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §[">§.§^!1§.length)
         {
            if(param1[§[">§.§^!1§[_loc2_] + "Enabled"] == true)
            {
               _loc3_ = new §[">§("" + (_loc2_ + 1),this.§-#3§,param1[§[">§.§^!1§[_loc2_] + "ActionType"],param1[§[">§.§^!1§[_loc2_] + "Color"],param1[§[">§.§^!1§[_loc2_] + "Text"],param1[§[">§.§^!1§[_loc2_] + "Url"],param1[§[">§.§^!1§[_loc2_] + "Size"]);
               this.§@#c§ += _loc3_.§"#;§();
               this.§'![§.push(_loc3_);
            }
            _loc2_++;
         }
         this.§,#R§ = !!param1.fontSize ? int(param1.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.§3!g§;
      }
      
      public function get imageRef() : String
      {
         return this.§]!i§;
      }
      
      public function get §=#z§() : String
      {
         return this.§>!;§;
      }
      
      public function get title() : String
      {
         return this.§%!5§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.§!"l§;
      }
      
      public function get §9$2§() : Boolean
      {
         return this.§3!t§;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function get layoutType() : String
      {
         return this.§3$'§;
      }
      
      public function get §5!E§() : Boolean
      {
         return this.§2T§;
      }
      
      public function get fontSize() : int
      {
         return this.§,#R§;
      }
      
      public function get §>§() : Vector.<§[">§>
      {
         return this.§'![§;
      }
      
      public function §?R§() : Number
      {
         return this.§@#c§;
      }
   }
}
