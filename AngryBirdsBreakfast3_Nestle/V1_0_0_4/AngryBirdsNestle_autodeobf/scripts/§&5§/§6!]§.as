package §&5§
{
   import §-!G§.§!!Y§;
   import §[j§.§%p§;
   import §`6§.§!!]§;
   import com.angrybirds.utils.§!!^§;
   import com.angrybirds.utils.§?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §6!]§ extends EventDispatcher implements §!!^§
   {
      
      public static const §]x§:Number = 30 * 60 * 1000;
       
      
      private var §#m§:String;
      
      private var §+!a§:Boolean;
      
      private var §;!§:Boolean = true;
      
      private var §]""§:Array;
      
      private var §,d§:int = -1;
      
      private var §2!i§:int = 1;
      
      private var §#!U§:Number = 0;
      
      public function §6!]§(param1:String, param2:Boolean)
      {
         super();
         this.§#m§ = param1;
         this.§]""§ = [];
         this.§+!a§ = param2;
         var _loc3_:int = 0;
         while(_loc3_ < 50)
         {
            this.§]""§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc3_++;
         }
      }
      
      public function §+>§() : void
      {
         this.§#!U§ = 0;
         this.§;!§ = true;
      }
      
      public function §&!"§(param1:Boolean = false) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§%p§ = null;
         var _loc6_:String = null;
         if(!this.§;!§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§#!U§ > §]x§)
         {
            this.§#!U§ = _loc2_.time;
            if(this.§+!a§)
            {
               _loc6_ = §!!]§.§?!+§.§<N§();
            }
            _loc4_ = "highscore";
            if(§!!Y§.§9!L§)
            {
               if(_loc6_)
               {
                  _loc3_ = {
                     "levelId":this.§#m§,
                     "playerId":§!!Y§.§9!L§.id,
                     "type":_loc6_
                  };
               }
               else
               {
                  _loc3_ = {
                     "levelId":this.§#m§,
                     "playerId":§!!Y§.§9!L§.id
                  };
               }
            }
            else if(_loc6_)
            {
               _loc3_ = {
                  "levelId":this.§#m§,
                  "type":_loc6_
               };
            }
            else
            {
               _loc3_ = {"levelId":this.§#m§};
            }
            _loc5_ = new §%p§(_loc3_,AngryBirdsCustom.§5"+§ + _loc4_,this,§%p§.§#0§);
            this.§;!§ = false;
            return true;
         }
         return false;
      }
      
      public function §7d§() : void
      {
         ++this.§2!i§;
         if(this.§2!i§ > HighscoreSidebar.§"!=§)
         {
            this.§2!i§ = 1;
         }
      }
      
      public function §=2§() : void
      {
         --this.§2!i§;
         if(this.§2!i§ < 1)
         {
            this.§2!i§ = HighscoreSidebar.§"!=§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §?§.§8!B§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§]""§ = _loc2_.highScore as Array;
         }
         this.§;!§ = true;
         dispatchEvent(new §6!P§(§6!P§.§=A§));
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&!`§(param1:IOErrorEvent) : void
      {
         this.§;!§ = true;
      }
      
      public function get ready() : Boolean
      {
         return this.§;!§;
      }
      
      public function get § !`§() : Array
      {
         return this.§]""§;
      }
      
      public function get levelId() : String
      {
         return this.§#m§;
      }
      
      public function get §3!=§() : int
      {
         return this.§2!i§;
      }
      
      public function get §@F§() : int
      {
         return this.§,d§;
      }
      
      public function get §;g§() : Boolean
      {
         return this.§+!a§;
      }
   }
}
