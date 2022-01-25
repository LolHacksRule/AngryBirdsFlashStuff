package §+!6§
{
   import §%!c§.§@2§;
   import §+n§.§0l§;
   import §+n§.§<`§;
   import §=!<§.§%P§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §^+§ extends EventDispatcher implements §0l§
   {
      
      public static const §5!U§:Number = 30 * 60 * 1000;
       
      
      private var §3j§:String;
      
      private var §"^§:Boolean = true;
      
      private var §?![§:Array;
      
      private var §'3§:int = 1;
      
      private var §=!%§:Number = 0;
      
      public function §^+§(param1:String)
      {
         super();
         this.§3j§ = param1;
         this.§?![§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§?![§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§=!%§ = 0;
         this.§"^§ = true;
      }
      
      public function §`!A§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§%P§ = null;
         var _loc5_:Object = null;
         if(!this.§"^§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§=!%§ > §5!U§)
         {
            this.§=!%§ = _loc2_.time;
            if(this.§3j§ == HighscoreSidebar.§`!0§)
            {
               _loc3_ = "topCollector";
               if(§@2§.§=!'§)
               {
                  _loc5_ = {"playerId":§@2§.§=!'§.§<!]§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §%P§(_loc5_,§6T§.§&H§ + _loc3_,this,§%P§.§]!J§);
               this.§"^§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§@2§.§=!'§)
               {
                  _loc5_ = {
                     "levelId":this.§3j§,
                     "playerId":§@2§.§=!'§.§<!]§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§3j§};
               }
               _loc4_ = new §%P§(_loc5_,§6T§.§&H§ + _loc3_,this,§%P§.§]!J§);
               this.§"^§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §%!+§() : void
      {
         ++this.§'3§;
         if(this.§'3§ > HighscoreSidebar.§,1§)
         {
            this.§'3§ = 1;
         }
      }
      
      public function §'!L§() : void
      {
         --this.§'3§;
         if(this.§'3§ < 1)
         {
            this.§'3§ = HighscoreSidebar.§,1§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §<`§.§48§((param1.currentTarget as URLLoader).data);
         if(this.§3j§ == HighscoreSidebar.§`!0§)
         {
            this.§?![§ = _loc2_.topCollectors as Array;
            §6T§.§>c§.§,j§ = _loc2_.collectedBeats;
         }
         else if(_loc2_ is Array)
         {
            this.§?![§ = _loc2_ as Array;
         }
         this.§"^§ = true;
         dispatchEvent(new §0!4§(§0!4§.§7_§));
      }
      
      public function §9!%§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=p§(param1:IOErrorEvent) : void
      {
         this.§"^§ = true;
      }
      
      public function get §=!Y§() : Boolean
      {
         return this.§"^§;
      }
      
      public function get §?!%§() : Array
      {
         return this.§?![§;
      }
      
      public function get levelId() : String
      {
         return this.§3j§;
      }
      
      public function get §1h§() : int
      {
         return this.§'3§;
      }
   }
}
