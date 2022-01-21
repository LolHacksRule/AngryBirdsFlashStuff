package §]! §
{
   import § v§.§!!^§;
   import §!!h§.§1H§;
   import §7"§.§1! §;
   import §7"§.§[!K§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §"!=§ extends EventDispatcher implements §1! §
   {
      
      public static const §'X§:Number = 30 * 60 * 1000;
       
      
      private var §try§:String;
      
      private var §^U§:Boolean = true;
      
      private var §@!!§:Array;
      
      private var §6!I§:int = 1;
      
      private var §'D§:Number = 0;
      
      public function §"!=§(param1:String)
      {
         super();
         this.§try§ = param1;
         this.§@!!§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§@!!§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§'D§ = 0;
         this.§^U§ = true;
      }
      
      public function §[!U§(param1:Boolean = false) : Boolean
      {
         var _loc5_:Object = null;
         if(!this.§^U§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§'D§ > §'X§)
         {
            this.§'D§ = _loc2_.time;
            var _loc3_:String = "highscore";
            if(§!!^§.§,!a§)
            {
               _loc5_ = {
                  "levelId":this.§try§,
                  "playerId":§!!^§.§,!a§.email
               };
            }
            else
            {
               _loc5_ = {"levelId":this.§try§};
            }
            var _loc4_:§1H§ = new §1H§(_loc5_,§'j§.§2H§ + _loc3_,this,§1H§.§`P§);
            this.§^U§ = false;
            return true;
         }
         return false;
      }
      
      public function §@p§() : void
      {
         ++this.§6!I§;
         if(this.§6!I§ > HighscoreSidebar.§"^§)
         {
            this.§6!I§ = 1;
         }
      }
      
      public function §2!h§() : void
      {
         --this.§6!I§;
         if(this.§6!I§ < 1)
         {
            this.§6!I§ = HighscoreSidebar.§"^§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §[!K§.§,!j§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§@!!§ = _loc2_.highScore as Array;
         }
         this.§^U§ = true;
         dispatchEvent(new §7!i§(§7!i§.§`K§));
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
         this.§^U§ = true;
      }
      
      public function get §!S§() : Boolean
      {
         return this.§^U§;
      }
      
      public function get §"!Q§() : Array
      {
         return this.§@!!§;
      }
      
      public function get levelId() : String
      {
         return this.§try§;
      }
      
      public function get §7!W§() : int
      {
         return this.§6!I§;
      }
   }
}
