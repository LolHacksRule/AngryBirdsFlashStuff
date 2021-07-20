package § "x§
{
   public class §@#F§
   {
       
      
      private var mId:String;
      
      private var §7W§:String;
      
      private var §2!Z§:String;
      
      private var §,"8§:String;
      
      private var §^$3§:String;
      
      private var §'3§:String;
      
      private var § ! §:Boolean;
      
      private var §2!4§:String;
      
      private var §="$§:String;
      
      private var §,#A§:Boolean;
      
      private var §>!%§:int;
      
      private var §?$0§:Vector.<§8]§>;
      
      private var §;"P§:Number;
      
      public function §@#F§(param1:String)
      {
         super();
         this.mId = param1;
      }
      
      public function §?!?§(param1:Object) : void
      {
         var _loc3_:§8]§ = null;
         this.§7W§ = param1.title;
         this.§2!Z§ = param1.imageRef;
         this.§,"8§ = param1.imageUrl;
         this.§^$3§ = param1.action;
         this.§'3§ = param1.text;
         this.§ ! § = param1.t;
         this.§2!4§ = !!param1.notificationName ? param1.notificationName : "";
         this.§="$§ = param1.layoutType;
         this.§,#A§ = param1.enabledCloseButton;
         this.§?$0§ = new Vector.<§8]§>();
         this.§;"P§ = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §8]§.§!"v§.length)
         {
            if(param1[§8]§.§!"v§[_loc2_] + "Enabled"] == true)
            {
               _loc3_ = new §8]§("" + (_loc2_ + 1),this.§2!4§,param1[§8]§.§!"v§[_loc2_] + "ActionType"],param1[§8]§.§!"v§[_loc2_] + "Color"],param1[§8]§.§!"v§[_loc2_] + "Text"],param1[§8]§.§!"v§[_loc2_] + "Url"],param1[§8]§.§!"v§[_loc2_] + "Size"]);
               this.§;"P§ += _loc3_.§6# §();
               this.§?$0§.push(_loc3_);
            }
            _loc2_++;
         }
         this.§>!%§ = !!param1.fontSize ? int(param1.fontSize) : 0;
      }
      
      public function get action() : String
      {
         return this.§^$3§;
      }
      
      public function get imageRef() : String
      {
         return this.§2!Z§;
      }
      
      public function get §"h§() : String
      {
         return this.§,"8§;
      }
      
      public function get title() : String
      {
         return this.§7W§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get text() : String
      {
         return this.§'3§;
      }
      
      public function get §8"6§() : Boolean
      {
         return this.§ ! §;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function get layoutType() : String
      {
         return this.§="$§;
      }
      
      public function get §3"T§() : Boolean
      {
         return this.§,#A§;
      }
      
      public function get fontSize() : int
      {
         return this.§>!%§;
      }
      
      public function get §@!I§() : Vector.<§8]§>
      {
         return this.§?$0§;
      }
      
      public function §-P§() : Number
      {
         return this.§;"P§;
      }
   }
}
