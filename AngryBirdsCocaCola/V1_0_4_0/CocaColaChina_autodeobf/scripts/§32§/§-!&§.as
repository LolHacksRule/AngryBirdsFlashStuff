package §32§
{
   import § C§.§+Q§;
   import § C§.§;l§;
   import §>9§.§9!V§;
   import §?k§.§[n§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §-!&§ extends EventDispatcher implements §+Q§
   {
      
      public static const §&n§:Number = 30 * 60 * 1000;
       
      
      private var §^I§:String;
      
      private var §#4§:Boolean = true;
      
      private var §4C§:Array;
      
      private var §6P§:int = 1;
      
      private var §0!a§:Number = 0;
      
      public function §-!&§(param1:String)
      {
         super();
         this.§^I§ = param1;
         this.§4C§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§4C§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§0!a§ = 0;
         this.§#4§ = true;
      }
      
      public function §5E§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§[n§ = null;
         var _loc5_:Object = null;
         if(!this.§#4§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§0!a§ > §&n§)
         {
            this.§0!a§ = _loc2_.time;
            if(this.§^I§ == HighscoreSidebar.§@!=§)
            {
               _loc3_ = "topCollector";
               if(§9!V§.§%!§)
               {
                  _loc5_ = {"playerId":§9!V§.§%!§.§7!;§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §[n§(_loc5_,§"!@§.§4w§ + _loc3_,this,§[n§.§,!b§);
               this.§#4§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§9!V§.§%!§)
               {
                  _loc5_ = {
                     "levelId":this.§^I§,
                     "playerId":§9!V§.§%!§.§7!;§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§^I§};
               }
               _loc4_ = new §[n§(_loc5_,§"!@§.§4w§ + _loc3_,this,§[n§.§,!b§);
               this.§#4§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §3!E§() : void
      {
         ++this.§6P§;
         if(this.§6P§ > HighscoreSidebar.§=Y§)
         {
            this.§6P§ = 1;
         }
      }
      
      public function §=8§() : void
      {
         --this.§6P§;
         if(this.§6P§ < 1)
         {
            this.§6P§ = HighscoreSidebar.§=Y§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §;l§.§]g§((param1.currentTarget as URLLoader).data);
         if(this.§^I§ == HighscoreSidebar.§@!=§)
         {
            this.§4C§ = _loc2_.topCollectors as Array;
            §"!@§.§-5§.§"s§ = _loc2_.collectedBeats;
         }
         else if(_loc2_ is Array)
         {
            this.§4C§ = _loc2_ as Array;
         }
         this.§#4§ = true;
         dispatchEvent(new §'!Z§(§'!Z§.§'B§));
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
         this.§#4§ = true;
      }
      
      public function get §4!Y§() : Boolean
      {
         return this.§#4§;
      }
      
      public function get §&q§() : Array
      {
         return this.§4C§;
      }
      
      public function get levelId() : String
      {
         return this.§^I§;
      }
      
      public function get §]x§() : int
      {
         return this.§6P§;
      }
   }
}
