package §>!%§
{
   import §,i§.§7;§;
   import §<Z§.§!!W§;
   import §<Z§.§"!8§;
   import §=b§.§,!G§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §0!F§ extends EventDispatcher implements §!!W§
   {
      
      public static const §"a§:Number = 30 * 60 * 1000;
       
      
      private var §>J§:String;
      
      private var §'!D§:Boolean = true;
      
      private var §<h§:Array;
      
      private var §0!'§:int = 1;
      
      private var §@!K§:Number = 0;
      
      public function §0!F§(param1:String)
      {
         super();
         this.§>J§ = param1;
         this.§<h§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§<h§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§@!K§ = 0;
         this.§'!D§ = true;
      }
      
      public function §>o§(param1:Boolean = false) : Boolean
      {
         var _loc5_:Object = null;
         if(!this.§'!D§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§@!K§ > §"a§)
         {
            this.§@!K§ = _loc2_.time;
            var _loc3_:String = "highscore";
            if(§,!G§.§-!8§)
            {
               _loc5_ = {
                  "levelId":this.§>J§,
                  "playerId":§,!G§.§-!8§.email
               };
            }
            else
            {
               _loc5_ = {"levelId":this.§>J§};
            }
            var _loc4_:§7;§ = new §7;§(_loc5_,§2!M§.§`8§ + _loc3_,this,§7;§.§[%§);
            this.§'!D§ = false;
            return true;
         }
         return false;
      }
      
      public function §>!G§() : void
      {
         ++this.§0!'§;
         if(this.§0!'§ > HighscoreSidebar.§1N§)
         {
            this.§0!'§ = 1;
         }
      }
      
      public function §'b§() : void
      {
         --this.§0!'§;
         if(this.§0!'§ < 1)
         {
            this.§0!'§ = HighscoreSidebar.§1N§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §"!8§.§&!p§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§<h§ = _loc2_.highScore as Array;
         }
         this.§'!D§ = true;
         dispatchEvent(new §1W§(§1W§.§7!T§));
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
         this.§'!D§ = true;
      }
      
      public function get §[!&§() : Boolean
      {
         return this.§'!D§;
      }
      
      public function get §-d§() : Array
      {
         return this.§<h§;
      }
      
      public function get levelId() : String
      {
         return this.§>J§;
      }
      
      public function get §&f§() : int
      {
         return this.§0!'§;
      }
   }
}
