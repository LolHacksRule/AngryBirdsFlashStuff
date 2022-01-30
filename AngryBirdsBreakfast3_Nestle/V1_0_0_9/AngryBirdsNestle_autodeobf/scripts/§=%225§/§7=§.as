package §="5§
{
   import §!"§.§^!7§;
   import §?u§.§48§;
   import §`!s§.§^2§;
   import com.angrybirds.utils.§?!-§;
   import com.angrybirds.utils.§?z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §7=§ extends EventDispatcher implements §?z§
   {
      
      public static const §0"&§:Number = 30 * 60 * 1000;
       
      
      private var §0j§:String;
      
      private var §3§:Boolean;
      
      private var §[h§:Boolean = true;
      
      private var §;!6§:Array;
      
      private var §9!h§:int = -1;
      
      private var §#c§:int = 1;
      
      private var §5!k§:Number = 0;
      
      public function §7=§(param1:String, param2:Boolean)
      {
         super();
         this.§0j§ = param1;
         this.§;!6§ = [];
         this.§3§ = param2;
         var _loc3_:int = 0;
         while(_loc3_ < 50)
         {
            this.§;!6§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc3_++;
         }
      }
      
      public function §=!U§() : void
      {
         this.§5!k§ = 0;
         this.§[h§ = true;
      }
      
      public function §@!H§(param1:Boolean = false) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§48§ = null;
         var _loc6_:String = null;
         if(!this.§[h§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§5!k§ > §0"&§)
         {
            this.§5!k§ = _loc2_.time;
            if(this.§3§)
            {
               _loc6_ = §^2§.§&!;§.§]T§();
            }
            _loc4_ = "highscore";
            if(§^!7§.§>!8§)
            {
               if(_loc6_)
               {
                  _loc3_ = {
                     "levelId":this.§0j§,
                     "playerId":§^!7§.§>!8§.id,
                     "type":_loc6_
                  };
               }
               else
               {
                  _loc3_ = {
                     "levelId":this.§0j§,
                     "playerId":§^!7§.§>!8§.id
                  };
               }
            }
            else if(_loc6_)
            {
               _loc3_ = {
                  "levelId":this.§0j§,
                  "type":_loc6_
               };
            }
            else
            {
               _loc3_ = {"levelId":this.§0j§};
            }
            _loc5_ = new §48§(_loc3_,AngryBirdsCustom.§8!O§ + _loc4_,this,§48§.§6!^§);
            this.§[h§ = false;
            return true;
         }
         return false;
      }
      
      public function §8""§() : void
      {
         ++this.§#c§;
         if(this.§#c§ > HighscoreSidebar.§!"!§)
         {
            this.§#c§ = 1;
         }
      }
      
      public function §,3§() : void
      {
         --this.§#c§;
         if(this.§#c§ < 1)
         {
            this.§#c§ = HighscoreSidebar.§!"!§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §?!-§.§4!-§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§;!6§ = _loc2_.highScore as Array;
         }
         this.§[h§ = true;
         dispatchEvent(new §7y§(§7y§.§7T§));
      }
      
      public function §%+§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5" §(param1:IOErrorEvent) : void
      {
         this.§[h§ = true;
      }
      
      public function get ready() : Boolean
      {
         return this.§[h§;
      }
      
      public function get §1-§() : Array
      {
         return this.§;!6§;
      }
      
      public function get levelId() : String
      {
         return this.§0j§;
      }
      
      public function get §6e§() : int
      {
         return this.§#c§;
      }
      
      public function get §?!z§() : int
      {
         return this.§9!h§;
      }
      
      public function get § m§() : Boolean
      {
         return this.§3§;
      }
   }
}
