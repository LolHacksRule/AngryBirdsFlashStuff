package §,"N§
{
   import §#!'§.§&G§;
   import §1!i§.§,#_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`#&§ extends EventDispatcher
   {
       
      
      protected var §^!m§:String;
      
      protected var §2"8§:§,#_§;
      
      protected var §9v§:§&G§;
      
      public function §`#&§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.§^!m§ = param1;
         }
         while(!_loc2_);
         
      }
      
      public function §->§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.isLoading)
            {
               loop0:
               while(true)
               {
                  this.§9v§ = new §&G§("me/friends/");
                  loop1:
                  while(true)
                  {
                     §§push(this.§9v§);
                     loop2:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§>"1§);
                        addr62:
                        while(!(_loc2_ && this))
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  addr96:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            throw new Error("Already loading friends list.");
         }
         §§goto(addr96);
      }
      
      protected function §>"1§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc2_:Array = this.§9v§.§3!U§.data;
         if(_loc7_)
         {
            this.§2"8§ = new §,#_§();
         }
         for each(_loc3_ in _loc2_)
         {
            if(_loc7_)
            {
               this.§2"8§[_loc3_.id] = _loc3_.name;
            }
         }
         if(_loc7_)
         {
            this.§9v§ = null;
         }
         do
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         while(_loc6_ && _loc2_);
         
      }
      
      public function get friends() : §,#_§
      {
         return this.§2"8§;
      }
      
      public function get isLoading() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§9v§ == null);
         if(!(_loc1_ && this))
         {
            return !§§pop();
         }
      }
   }
}
