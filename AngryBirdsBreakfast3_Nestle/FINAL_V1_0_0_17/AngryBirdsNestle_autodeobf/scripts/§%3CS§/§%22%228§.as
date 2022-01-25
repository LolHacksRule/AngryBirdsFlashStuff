package §<S§
{
   import §1![§.§#E§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   import com.angrybirds.utils.§2!N§;
   import com.angrybirds.utils.§30§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §""8§ extends EventDispatcher implements §30§
   {
      
      public static const §7%§:Number = 30 * 60 * 1000;
       
      
      private var §3D§:String;
      
      private var §&!4§:Boolean;
      
      private var §3<§:Boolean = true;
      
      private var §,!m§:Array;
      
      private var §5!p§:int = -1;
      
      private var §?v§:int = 1;
      
      private var §["$§:Number = 0;
      
      public function §""8§(param1:String, param2:Boolean)
      {
         super();
         this.§3D§ = param1;
         this.§,!m§ = [];
         this.§&!4§ = param2;
         var _loc3_:int = 0;
         while(_loc3_ < 50)
         {
            this.§,!m§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc3_++;
         }
      }
      
      public function §"c§() : void
      {
         this.§["$§ = 0;
         this.§3<§ = true;
      }
      
      public function §1S§(param1:Boolean = false) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§#E§ = null;
         var _loc6_:String = null;
         if(!this.§3<§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§["$§ > §7%§)
         {
            this.§["$§ = _loc2_.time;
            if(this.§&!4§)
            {
               _loc6_ = §@"#§.§,2§.§0!x§();
            }
            _loc4_ = "highscore";
            if(§2P§.§[!$§)
            {
               if(_loc6_)
               {
                  _loc3_ = {
                     "levelId":this.§3D§,
                     "playerId":§2P§.§[!$§.id,
                     "type":_loc6_
                  };
               }
               else
               {
                  _loc3_ = {
                     "levelId":this.§3D§,
                     "playerId":§2P§.§[!$§.id
                  };
               }
            }
            else if(_loc6_)
            {
               _loc3_ = {
                  "levelId":this.§3D§,
                  "type":_loc6_
               };
            }
            else
            {
               _loc3_ = {"levelId":this.§3D§};
            }
            _loc5_ = new §#E§(_loc3_,AngryBirdsCustom.§;"1§ + _loc4_,this,§#E§.§3b§);
            this.§3<§ = false;
            return true;
         }
         return false;
      }
      
      public function §[@§() : void
      {
         ++this.§?v§;
         if(this.§?v§ > HighscoreSidebar.§%A§)
         {
            this.§?v§ = 1;
         }
      }
      
      public function §>!8§() : void
      {
         --this.§?v§;
         if(this.§?v§ < 1)
         {
            this.§?v§ = HighscoreSidebar.§%A§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§,!m§ = _loc2_.highScore as Array;
         }
         this.§3<§ = true;
         dispatchEvent(new §>%§(§>%§.§=L§));
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         this.§3<§ = true;
      }
      
      public function get ready() : Boolean
      {
         return this.§3<§;
      }
      
      public function get §7P§() : Array
      {
         return this.§,!m§;
      }
      
      public function get levelId() : String
      {
         return this.§3D§;
      }
      
      public function get §!!T§() : int
      {
         return this.§?v§;
      }
      
      public function get §]!T§() : int
      {
         return this.§5!p§;
      }
      
      public function get §>E§() : Boolean
      {
         return this.§&!4§;
      }
   }
}
