package §1!'§
{
   import §<o§.§#D§;
   import §^>§.§5b§;
   import §^>§.§<t§;
   import §`!7§.§[5§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class § !J§ extends EventDispatcher implements §5b§
   {
      
      public static const §@!c§:Number = 30 * 60 * 1000;
       
      
      private var §@h§:String;
      
      private var §!n§:Boolean = true;
      
      private var §,!%§:Array;
      
      private var §7s§:int = 1;
      
      private var §@!&§:Number = 0;
      
      public function § !J§(param1:String)
      {
         super();
         this.§@h§ = param1;
         this.§,!%§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§,!%§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§@!&§ = 0;
         this.§!n§ = true;
      }
      
      public function §super§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§#D§ = null;
         var _loc5_:Object = null;
         if(!this.§!n§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§@!&§ > §@!c§)
         {
            this.§@!&§ = _loc2_.time;
            if(this.§@h§ == HighscoreSidebar.§7!I§)
            {
               _loc3_ = "topCollector";
               if(§[5§.§0c§)
               {
                  _loc5_ = {"playerId":§[5§.§0c§.§#c§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §#D§(_loc5_,§=i§.§'<§ + _loc3_,this,§#D§.§ !a§);
               this.§!n§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§[5§.§0c§)
               {
                  _loc5_ = {
                     "levelId":this.§@h§,
                     "playerId":§[5§.§0c§.§#c§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§@h§};
               }
               _loc4_ = new §#D§(_loc5_,§=i§.§'<§ + _loc3_,this,§#D§.§ !a§);
               this.§!n§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §0#§() : void
      {
         ++this.§7s§;
         if(this.§7s§ > HighscoreSidebar.§[x§)
         {
            this.§7s§ = 1;
         }
      }
      
      public function §26§() : void
      {
         --this.§7s§;
         if(this.§7s§ < 1)
         {
            this.§7s§ = HighscoreSidebar.§[x§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §<t§.§1&§((param1.currentTarget as URLLoader).data);
         if(this.§@h§ == HighscoreSidebar.§7!I§)
         {
            this.§,!%§ = _loc2_.topCollectors as Array;
            §=i§.§2S§.§@c§ = _loc2_.collectedBeats;
         }
         else if(_loc2_ is Array)
         {
            this.§,!%§ = _loc2_ as Array;
         }
         this.§!n§ = true;
         dispatchEvent(new §#! §(§#! §.§>l§));
      }
      
      public function §5x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'1§(param1:IOErrorEvent) : void
      {
         this.§!n§ = true;
      }
      
      public function get §`k§() : Boolean
      {
         return this.§!n§;
      }
      
      public function get §+f§() : Array
      {
         return this.§,!%§;
      }
      
      public function get levelId() : String
      {
         return this.§@h§;
      }
      
      public function get §%v§() : int
      {
         return this.§7s§;
      }
   }
}
