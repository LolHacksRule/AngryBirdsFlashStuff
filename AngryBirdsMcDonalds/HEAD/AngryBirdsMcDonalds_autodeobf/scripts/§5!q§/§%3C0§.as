package §5!q§
{
   import §&6§.§`!T§;
   import §&6§.§`!q§;
   import §,E§.§"!K§;
   import §0$§.§!t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §<0§ extends EventDispatcher implements §`!T§
   {
      
      public static const §import§:Number = 30 * 60 * 1000;
       
      
      private var §@!e§:String;
      
      private var §2n§:Boolean = true;
      
      private var §!!8§:Array;
      
      private var §7!5§:int = 1;
      
      private var §;!%§:Number = 0;
      
      public function §<0§(param1:String)
      {
         super();
         this.§@!e§ = param1;
         this.§!!8§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§!!8§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§;!%§ = 0;
         this.§2n§ = true;
      }
      
      public function §;!f§(param1:Boolean = false) : Boolean
      {
         var _loc5_:Object = null;
         if(!this.§2n§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§;!%§ > §import§)
         {
            this.§;!%§ = _loc2_.time;
            var _loc3_:String = "highscore";
            if(§!t§.§<1§)
            {
               _loc5_ = {
                  "levelId":this.§@!e§,
                  "playerId":§!t§.§<1§.email
               };
            }
            else
            {
               _loc5_ = {"levelId":this.§@!e§};
            }
            var _loc4_:§"!K§ = new §"!K§(_loc5_,§3![§.§=![§ + _loc3_,this,§"!K§.§<!4§);
            this.§2n§ = false;
            return true;
         }
         return false;
      }
      
      public function §^!p§() : void
      {
         ++this.§7!5§;
         if(this.§7!5§ > HighscoreSidebar.§;-§)
         {
            this.§7!5§ = 1;
         }
      }
      
      public function §^A§() : void
      {
         --this.§7!5§;
         if(this.§7!5§ < 1)
         {
            this.§7!5§ = HighscoreSidebar.§;-§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §`!q§.§-`§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§!!8§ = _loc2_.highScore as Array;
         }
         this.§2n§ = true;
         dispatchEvent(new §<!$§(§<!$§.§`!J§));
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
         this.§2n§ = true;
      }
      
      public function get §>!i§() : Boolean
      {
         return this.§2n§;
      }
      
      public function get §+[§() : Array
      {
         return this.§!!8§;
      }
      
      public function get levelId() : String
      {
         return this.§@!e§;
      }
      
      public function get §[!X§() : int
      {
         return this.§7!5§;
      }
   }
}
