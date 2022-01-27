package
{
   import §1!6§.§ !3§;
   import §9i§.§+A§;
   import §;<§.§%!I§;
   import §;<§.§7!K§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §@_§ extends EventDispatcher implements §%!I§
   {
      
      public static const §+b§:Number = 30 * 60 * 1000;
       
      
      private var §;>§:String;
      
      private var §#!1§:Boolean = true;
      
      private var §?U§:Array;
      
      private var §'J§:int = 0;
      
      private var §!!I§:int = 1;
      
      private var §?_§:Number = 0;
      
      public function §@_§(param1:String)
      {
         super();
         this.§;>§ = param1;
         this.§?U§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§?U§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§?_§ = 0;
         this.§#!1§ = true;
      }
      
      public function §+=§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§+A§ = null;
         var _loc5_:Object = null;
         if(!this.§#!1§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§?_§ > §+b§)
         {
            this.§?_§ = _loc2_.time;
            if(this.§;>§ == HighscoreSidebar.§;]§)
            {
               _loc3_ = "overallHighScore";
               if(§ !3§.§@!`§)
               {
                  _loc5_ = {"playerId":§ !3§.§@!`§.§#!3§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §+A§(_loc5_,§1F§.§&1§ + _loc3_,this,§+A§.§<!&§);
               this.§#!1§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§ !3§.§@!`§)
               {
                  _loc5_ = {
                     "levelId":this.§;>§,
                     "playerId":§ !3§.§@!`§.§#!3§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§;>§};
               }
               _loc4_ = new §+A§(_loc5_,§1F§.§&1§ + _loc3_,this,§+A§.§<!&§);
               this.§#!1§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §]5§() : void
      {
         ++this.§!!I§;
         if(this.§!!I§ > HighscoreSidebar.§5w§)
         {
            this.§!!I§ = 1;
         }
      }
      
      public function §12§() : void
      {
         --this.§!!I§;
         if(this.§!!I§ < 1)
         {
            this.§!!I§ = HighscoreSidebar.§5w§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §7!K§.§>e§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§?U§ = _loc2_.highScore as Array;
            this.§'J§ = _loc2_.heikkiScore;
         }
         this.§#!1§ = true;
         dispatchEvent(new §;k§(§;k§.§-T§));
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
         this.§#!1§ = true;
      }
      
      public function get §[§() : Boolean
      {
         return this.§#!1§;
      }
      
      public function get §5!T§() : Array
      {
         return this.§?U§;
      }
      
      public function get levelId() : String
      {
         return this.§;>§;
      }
      
      public function get §>!#§() : int
      {
         return this.§!!I§;
      }
      
      public function get heikkiScore() : int
      {
         return this.§'J§;
      }
   }
}
