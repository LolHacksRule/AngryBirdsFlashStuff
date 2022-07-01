package §=0§
{
   import §#!n§.§3!s§;
   import §%f§.§[@§;
   import §&!>§.§2!V§;
   import com.angrybirds.utils.§[!k§;
   import com.angrybirds.utils.§`2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §8!,§ extends EventDispatcher implements §[!k§
   {
      
      public static const §#r§:Number = 30 * 60 * 1000;
       
      
      private var §,&§:String;
      
      private var §3!q§:Boolean;
      
      private var §'H§:Boolean = true;
      
      private var §3!O§:Array;
      
      private var §<"&§:int = -1;
      
      private var §"!Q§:int = 1;
      
      private var §^G§:Number = 0;
      
      public function §8!,§(param1:String, param2:Boolean)
      {
         super();
         this.§,&§ = param1;
         this.§3!O§ = [];
         this.§3!q§ = param2;
         var _loc3_:int = 0;
         while(_loc3_ < 50)
         {
            this.§3!O§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc3_++;
         }
      }
      
      public function §"!J§() : void
      {
         this.§^G§ = 0;
         this.§'H§ = true;
      }
      
      public function §"!8§(param1:Boolean = false) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§3!s§ = null;
         var _loc6_:String = null;
         if(!this.§'H§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§^G§ > §#r§)
         {
            this.§^G§ = _loc2_.time;
            if(this.§3!q§)
            {
               _loc6_ = §[@§.§"e§.§]f§();
            }
            _loc4_ = "highscore";
            if(§2!V§.§!!?§)
            {
               if(_loc6_)
               {
                  _loc3_ = {
                     "levelId":this.§,&§,
                     "playerId":§2!V§.§!!?§.id,
                     "type":_loc6_
                  };
               }
               else
               {
                  _loc3_ = {
                     "levelId":this.§,&§,
                     "playerId":§2!V§.§!!?§.id
                  };
               }
            }
            else if(_loc6_)
            {
               _loc3_ = {
                  "levelId":this.§,&§,
                  "type":_loc6_
               };
            }
            else
            {
               _loc3_ = {"levelId":this.§,&§};
            }
            _loc5_ = new §3!s§(_loc3_,AngryBirdsCustom.§1=§ + _loc4_,this,§3!s§.§5%§);
            this.§'H§ = false;
            return true;
         }
         return false;
      }
      
      public function §?""§() : void
      {
         ++this.§"!Q§;
         if(this.§"!Q§ > HighscoreSidebar.§[5§)
         {
            this.§"!Q§ = 1;
         }
      }
      
      public function §?"3§() : void
      {
         --this.§"!Q§;
         if(this.§"!Q§ < 1)
         {
            this.§"!Q§ = HighscoreSidebar.§[5§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §`2§.§#!l§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§3!O§ = _loc2_.highScore as Array;
         }
         this.§'H§ = true;
         dispatchEvent(new §6p§(§6p§.§#j§));
      }
      
      public function §0!n§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4J§(param1:IOErrorEvent) : void
      {
         this.§'H§ = true;
      }
      
      public function get ready() : Boolean
      {
         return this.§'H§;
      }
      
      public function get §0"2§() : Array
      {
         return this.§3!O§;
      }
      
      public function get levelId() : String
      {
         return this.§,&§;
      }
      
      public function get §!D§() : int
      {
         return this.§"!Q§;
      }
      
      public function get §]C§() : int
      {
         return this.§<"&§;
      }
      
      public function get §4!t§() : Boolean
      {
         return this.§3!q§;
      }
   }
}
