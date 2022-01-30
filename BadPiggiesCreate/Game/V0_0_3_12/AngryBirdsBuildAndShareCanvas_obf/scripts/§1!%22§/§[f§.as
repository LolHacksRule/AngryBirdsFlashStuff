package §1!"§
{
   import §=e§.§1!@§;
   import §^x§.§;_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §[f§ extends EventDispatcher
   {
      
      public static const §9!k§:String = "snapping";
      
      public static const §0!K§:String = "tooltips";
      
      public static const §1V§:String = "zoombar";
      
      private static var §%a§:§[f§;
       
      
      private var §`e§:Dictionary;
      
      private var §&!@§:SharedObject;
      
      public function §[f§()
      {
         this.§`e§ = new Dictionary();
         super();
         §1!@§.registerMethod("setOptions",this.§=!_§);
         this.§`e§[§9!k§] = true;
         this.§`e§[§0!K§] = true;
         this.§`e§[§1V§] = false;
         this.§&"9§(false);
      }
      
      public static function init() : void
      {
         if(§%a§ == null)
         {
            §%a§ = new §[f§();
         }
      }
      
      public static function §@"3§() : §[f§
      {
         if(§%a§ == null)
         {
            init();
         }
         return §%a§;
      }
      
      private function §&"9§(param1:Boolean = true) : void
      {
         var key:String = null;
         var save:Boolean = param1;
         try
         {
            if(!this.§&!@§)
            {
               this.§&!@§ = SharedObject.getLocal(§%"$§.§;!s§());
            }
            for(key in this.§`e§)
            {
               if(this.§&!@§.data[key] == undefined || save)
               {
                  this.§&!@§.data[key] = this.§`e§[key];
               }
               else
               {
                  this.§`e§[key] = this.§&!@§.data[key];
               }
            }
            this.§&!@§.flush();
         }
         catch(e:Error)
         {
         }
         §;_§.§?Z§ = this.§`e§[§0!K§];
      }
      
      public function §@!D§(param1:String) : void
      {
         if(this.§`e§[param1] == undefined)
         {
            this.§`e§[param1] = false;
         }
         this.§9!v§(param1,!this.§`e§[param1]);
      }
      
      public function §9!v§(param1:String, param2:Boolean) : void
      {
         if(this.§`e§[param1] != param2)
         {
            this.§`e§[param1] = param2;
            dispatchEvent(new Event(Event.CHANGE));
            this.§&"9§();
            §;_§.§?Z§ = this.§`e§[§0!K§];
         }
      }
      
      public function § ",§(param1:String) : Boolean
      {
         if(this.§`e§[param1] == undefined)
         {
            return false;
         }
         return this.§`e§[param1];
      }
      
      public function §=!_§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:Object = JSON.parse(param1);
         if(§%"$§.§;U§)
         {
            for(_loc3_ in _loc2_)
            {
               this.§9!v§(_loc3_,_loc2_[_loc3_]);
            }
         }
      }
   }
}
