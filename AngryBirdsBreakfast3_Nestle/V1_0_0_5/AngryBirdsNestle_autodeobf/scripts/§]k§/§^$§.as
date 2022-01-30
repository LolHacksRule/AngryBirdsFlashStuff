package §]K§
{
   import §2W§.§+!d§;
   import §63§.§^!!§;
   import §?!v§.§2" §;
   import com.angrybirds.utils.§0;§;
   import com.angrybirds.utils.§?m§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §^$§ extends EventDispatcher implements §0;§
   {
      
      public static const §`!%§:Number = 30 * 60 * 1000;
       
      
      private var §+y§:String;
      
      private var §;%§:Boolean;
      
      private var §?[§:Boolean = true;
      
      private var §?!y§:Array;
      
      private var §`L§:int = -1;
      
      private var §'!,§:int = 1;
      
      private var §=!8§:Number = 0;
      
      public function §^$§(param1:String, param2:Boolean)
      {
         super();
         this.§+y§ = param1;
         this.§?!y§ = [];
         this.§;%§ = param2;
         var _loc3_:int = 0;
         while(_loc3_ < 50)
         {
            this.§?!y§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc3_++;
         }
      }
      
      public function §0!m§() : void
      {
         this.§=!8§ = 0;
         this.§?[§ = true;
      }
      
      public function §]<§(param1:Boolean = false) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§2" § = null;
         var _loc6_:String = null;
         if(!this.§?[§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§=!8§ > §`!%§)
         {
            this.§=!8§ = _loc2_.time;
            if(this.§;%§)
            {
               _loc6_ = §+!d§.§<"5§.§'!G§();
            }
            _loc4_ = "highscore";
            if(§^!!§.§]!P§)
            {
               if(_loc6_)
               {
                  _loc3_ = {
                     "levelId":this.§+y§,
                     "playerId":§^!!§.§]!P§.id,
                     "type":_loc6_
                  };
               }
               else
               {
                  _loc3_ = {
                     "levelId":this.§+y§,
                     "playerId":§^!!§.§]!P§.id
                  };
               }
            }
            else if(_loc6_)
            {
               _loc3_ = {
                  "levelId":this.§+y§,
                  "type":_loc6_
               };
            }
            else
            {
               _loc3_ = {"levelId":this.§+y§};
            }
            _loc5_ = new §2" §(_loc3_,AngryBirdsCustom.§'P§ + _loc4_,this,§2" §.§0!<§);
            this.§?[§ = false;
            return true;
         }
         return false;
      }
      
      public function §4"§() : void
      {
         ++this.§'!,§;
         if(this.§'!,§ > HighscoreSidebar.§5Y§)
         {
            this.§'!,§ = 1;
         }
      }
      
      public function §3!V§() : void
      {
         --this.§'!,§;
         if(this.§'!,§ < 1)
         {
            this.§'!,§ = HighscoreSidebar.§5Y§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §?m§.§98§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§?!y§ = _loc2_.highScore as Array;
         }
         this.§?[§ = true;
         dispatchEvent(new §9!]§(§9!]§.§8!N§));
      }
      
      public function §&k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0C§(param1:IOErrorEvent) : void
      {
         this.§?[§ = true;
      }
      
      public function get ready() : Boolean
      {
         return this.§?[§;
      }
      
      public function get §?!s§() : Array
      {
         return this.§?!y§;
      }
      
      public function get levelId() : String
      {
         return this.§+y§;
      }
      
      public function get §@!'§() : int
      {
         return this.§'!,§;
      }
      
      public function get §[6§() : int
      {
         return this.§`L§;
      }
      
      public function get §%m§() : Boolean
      {
         return this.§;%§;
      }
   }
}
