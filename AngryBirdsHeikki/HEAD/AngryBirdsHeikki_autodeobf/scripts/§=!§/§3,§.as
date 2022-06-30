package §=!§
{
   import §#%§.§70§;
   import §0!X§.§!!Z§;
   import §0!X§.§8!F§;
   import §>!M§.§2?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3,§ extends EventDispatcher implements §!!Z§
   {
      
      public static const §'2§:Number = 30 * 60 * 1000;
       
      
      private var §8!,§:String;
      
      private var §6b§:Boolean = true;
      
      private var § !4§:Array;
      
      private var §5!W§:int = 0;
      
      private var §-!b§:int = 1;
      
      private var §^P§:Number = 0;
      
      public function §3,§(param1:String)
      {
         super();
         this.§8!,§ = param1;
         this.§ !4§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§ !4§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§^P§ = 0;
         this.§6b§ = true;
      }
      
      public function §;_§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§2?§ = null;
         var _loc5_:Object = null;
         if(!this.§6b§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§^P§ > §'2§)
         {
            this.§^P§ = _loc2_.time;
            if(this.§8!,§ == HighscoreSidebar.§!!2§)
            {
               _loc3_ = "overallHighScore";
               if(§70§.§6d§)
               {
                  _loc5_ = {"playerId":§70§.§6d§.§6!X§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §2?§(_loc5_,§"!R§.§['§ + _loc3_,this,§2?§.§&!g§);
               this.§6b§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§70§.§6d§)
               {
                  _loc5_ = {
                     "levelId":this.§8!,§,
                     "playerId":§70§.§6d§.§6!X§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§8!,§};
               }
               _loc4_ = new §2?§(_loc5_,§"!R§.§['§ + _loc3_,this,§2?§.§&!g§);
               this.§6b§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §1!E§() : void
      {
         ++this.§-!b§;
         if(this.§-!b§ > HighscoreSidebar.§"6§)
         {
            this.§-!b§ = 1;
         }
      }
      
      public function §4!?§() : void
      {
         --this.§-!b§;
         if(this.§-!b§ < 1)
         {
            this.§-!b§ = HighscoreSidebar.§"6§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §8!F§.§[<§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§ !4§ = _loc2_.highScore as Array;
            this.§5!W§ = _loc2_.heikkiScore;
         }
         this.§6b§ = true;
         dispatchEvent(new §%[§(§%[§.§-!D§));
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
         this.§6b§ = true;
      }
      
      public function get §+1§() : Boolean
      {
         return this.§6b§;
      }
      
      public function get §=!N§() : Array
      {
         return this.§ !4§;
      }
      
      public function get levelId() : String
      {
         return this.§8!,§;
      }
      
      public function get §#!4§() : int
      {
         return this.§-!b§;
      }
      
      public function get heikkiScore() : int
      {
         return this.§5!W§;
      }
   }
}
