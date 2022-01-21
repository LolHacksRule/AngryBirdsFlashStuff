package §3#§
{
   import § !1§.§8!Y§;
   import § !1§.§[n§;
   import §'Y§.§6Q§;
   import §?H§.§>!!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §5!J§ extends EventDispatcher implements §[n§
   {
      
      public static const §^Z§:Number = 30 * 60 * 1000;
       
      
      private var §<!5§:String;
      
      private var §]p§:Boolean = true;
      
      private var §+Q§:Array;
      
      private var §!!7§:int = 1;
      
      private var §?#§:Number = 0;
      
      public function §5!J§(param1:String)
      {
         super();
         this.§<!5§ = param1;
         this.§+Q§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§+Q§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§?#§ = 0;
         this.§]p§ = true;
      }
      
      public function §8H§(param1:Boolean = false) : Boolean
      {
         var _loc5_:Object = null;
         if(!this.§]p§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§?#§ > §^Z§)
         {
            this.§?#§ = _loc2_.time;
            var _loc3_:String = "highscore";
            if(§>!!§.§^!4§)
            {
               _loc5_ = {
                  "levelId":this.§<!5§,
                  "playerId":§>!!§.§^!4§.email
               };
            }
            else
            {
               _loc5_ = {"levelId":this.§<!5§};
            }
            var _loc4_:§6Q§ = new §6Q§(_loc5_,§;!4§.§'!O§ + _loc3_,this,§6Q§.§&!0§);
            this.§]p§ = false;
            return true;
         }
         return false;
      }
      
      public function §;8§() : void
      {
         ++this.§!!7§;
         if(this.§!!7§ > HighscoreSidebar.§+!K§)
         {
            this.§!!7§ = 1;
         }
      }
      
      public function §>S§() : void
      {
         --this.§!!7§;
         if(this.§!!7§ < 1)
         {
            this.§!!7§ = HighscoreSidebar.§+!K§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §8!Y§.§%f§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§+Q§ = _loc2_.highScore as Array;
         }
         this.§]p§ = true;
         dispatchEvent(new §`?§(§`?§.§=!_§));
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
         this.§]p§ = true;
      }
      
      public function get §-!b§() : Boolean
      {
         return this.§]p§;
      }
      
      public function get §;`§() : Array
      {
         return this.§+Q§;
      }
      
      public function get levelId() : String
      {
         return this.§<!5§;
      }
      
      public function get § !^§() : int
      {
         return this.§!!7§;
      }
   }
}
