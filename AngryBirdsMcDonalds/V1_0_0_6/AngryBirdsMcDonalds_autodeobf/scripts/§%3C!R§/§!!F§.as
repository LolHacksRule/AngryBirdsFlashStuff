package §<!R§
{
   import §7!Q§.§[!5§;
   import §>!<§.§-E§;
   import §`!@§.§!!Y§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §!!F§ extends EventDispatcher implements §[!X§
   {
      
      public static const §"X§:Number = 30 * 60 * 1000;
       
      
      private var § if§:String;
      
      private var §&!U§:Boolean = true;
      
      private var §const§:Array;
      
      private var §%a§:int = 1;
      
      private var §`B§:Number = 0;
      
      public function §!!F§(param1:String)
      {
         super();
         this.§ if§ = param1;
         this.§const§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§const§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§`B§ = 0;
         this.§&!U§ = true;
      }
      
      public function §,!D§(param1:Boolean = false) : Boolean
      {
         var _loc5_:Object = null;
         if(!this.§&!U§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§`B§ > §"X§)
         {
            this.§`B§ = _loc2_.time;
            var _loc3_:String = "highscore";
            if(§[!5§.§7!h§)
            {
               _loc5_ = {
                  "levelId":this.§ if§,
                  "playerId":§[!5§.§7!h§.email
               };
            }
            else
            {
               _loc5_ = {"levelId":this.§ if§};
            }
            var _loc4_:§-E§ = new §-E§(_loc5_,§ 4§.§=R§ + _loc3_,this,§-E§.§]!,§);
            this.§&!U§ = false;
            return true;
         }
         return false;
      }
      
      public function §8w§() : void
      {
         ++this.§%a§;
         if(this.§%a§ > HighscoreSidebar.§"!7§)
         {
            this.§%a§ = 1;
         }
      }
      
      public function §2M§() : void
      {
         --this.§%a§;
         if(this.§%a§ < 1)
         {
            this.§%a§ = HighscoreSidebar.§"!7§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §!!Y§.§@M§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§const§ = _loc2_.highScore as Array;
         }
         this.§&!U§ = true;
         dispatchEvent(new §11§(§11§.§[t§));
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
         this.§&!U§ = true;
      }
      
      public function get §3a§() : Boolean
      {
         return this.§&!U§;
      }
      
      public function get §2`§() : Array
      {
         return this.§const§;
      }
      
      public function get levelId() : String
      {
         return this.§ if§;
      }
      
      public function get §6!@§() : int
      {
         return this.§%a§;
      }
   }
}
