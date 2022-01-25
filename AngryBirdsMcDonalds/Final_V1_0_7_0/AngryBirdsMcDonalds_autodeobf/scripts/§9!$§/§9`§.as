package §9!$§
{
   import §1!^§.§,!n§;
   import §7!N§.§0-§;
   import §<! §.§1!6§;
   import §<! §.§<<§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §9`§ extends EventDispatcher implements §<<§
   {
      
      public static const §6!,§:Number = 30 * 60 * 1000;
       
      
      private var §7h§:String;
      
      private var §=?§:Boolean = true;
      
      private var §=!!§:Array;
      
      private var §#_§:int = 1;
      
      private var §2!'§:Number = 0;
      
      public function §9`§(param1:String)
      {
         super();
         this.§7h§ = param1;
         this.§=!!§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§=!!§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§2!'§ = 0;
         this.§=?§ = true;
      }
      
      public function §=!A§(param1:Boolean = false) : Boolean
      {
         var _loc5_:Object = null;
         if(!this.§=?§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§2!'§ > §6!,§)
         {
            this.§2!'§ = _loc2_.time;
            var _loc3_:String = "highscore";
            if(§0-§.§6!&§)
            {
               _loc5_ = {
                  "levelId":this.§7h§,
                  "playerId":§0-§.§6!&§.email
               };
            }
            else
            {
               _loc5_ = {"levelId":this.§7h§};
            }
            var _loc4_:§,!n§ = new §,!n§(_loc5_,§9!_§.§?!k§ + _loc3_,this,§,!n§.§-I§);
            this.§=?§ = false;
            return true;
         }
         return false;
      }
      
      public function §7&§() : void
      {
         ++this.§#_§;
         if(this.§#_§ > HighscoreSidebar.§2!d§)
         {
            this.§#_§ = 1;
         }
      }
      
      public function §+A§() : void
      {
         --this.§#_§;
         if(this.§#_§ < 1)
         {
            this.§#_§ = HighscoreSidebar.§2!d§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §1!6§.§>o§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§=!!§ = _loc2_.highScore as Array;
         }
         this.§=?§ = true;
         dispatchEvent(new §61§(§61§.§0K§));
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
         this.§=?§ = true;
      }
      
      public function get §5!I§() : Boolean
      {
         return this.§=?§;
      }
      
      public function get §[`§() : Array
      {
         return this.§=!!§;
      }
      
      public function get levelId() : String
      {
         return this.§7h§;
      }
      
      public function get §7%§() : int
      {
         return this.§#_§;
      }
   }
}
