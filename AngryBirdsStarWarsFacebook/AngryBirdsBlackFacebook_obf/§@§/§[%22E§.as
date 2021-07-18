package §@§#4
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §["E§
   {
       
      
      private var §?"?§:int = 0;
      
      private var §<!#§:Vector.<Object>;
      
      private var §4#F§:Dictionary;
      
      private var §+=§:Rectangle;
      
      public function §["E§(param1:Rectangle)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            loop0:
            do
            {
               this.§4#F§ = new Dictionary();
               while(true)
               {
                  this.§<!#§ = new Vector.<Object>(0);
                  while(_loc3_ || _loc3_)
                  {
                     this.§+=§ = param1;
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc3_);
            
         }
      }
      
      public function §@"Y§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§<!#§.push({
               "url":param1,
               "link":param2
            });
         }
         do
         {
            this.§'" §();
         }
         while(_loc4_);
         
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:§4!+§ = null;
         loop0:
         for(_loc1_ in this.§4#F§)
         {
            _loc2_ = this.§4#F§[_loc1_];
            if(_loc5_ || this)
            {
               _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     do
                     {
                        _loc2_.dispose();
                     }
                     while(!_loc5_);
                     
                     if(!(_loc5_ || this))
                     {
                        break;
                        addr71:
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr71);
         }
         if(_loc5_ || this)
         {
            this.§4#F§ = new Dictionary();
         }
      }
      
      private function §'" §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?"?§ == 0);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        if(_loc2_ || this)
                        {
                           this.§&#Y§();
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§<!#§.length > 0);
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              addr79:
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                              }
                           }
                           addr80:
                        }
                     }
                     break;
                  }
                  return;
                  addr49:
               }
               §§goto(addr79);
            }
         }
         §§goto(addr80);
      }
      
      private function §&#Y§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§?"?§);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc3_)
            {
               _loc4_.§?"?§ = _loc5_;
            }
         }
         var _loc1_:String = this.§<!#§[0].url;
         var _loc2_:String = this.§<!#§[0].link;
         var _loc3_:§4!+§ = this.§@A§(_loc1_,_loc2_);
         if(_loc7_ || _loc1_)
         {
            _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(!(_loc6_ && _loc2_))
               {
                  _loc3_.§3#E§(_loc1_);
                  if(!_loc7_)
                  {
                     continue;
                  }
                  return;
                  addr92:
               }
            }
         }
         §§goto(addr92);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§4!+§ = §4!+§(param1.currentTarget);
         if(!(_loc6_ && _loc2_))
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                  if(!(_loc6_ && _loc2_))
                  {
                     this.§<!#§.shift();
                     if(_loc5_ || _loc2_)
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           if(true)
                           {
                              var _loc3_:*;
                              §§push((_loc3_ = this).§?"?§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc4_:* = §§pop();
                           }
                           continue loop1;
                           if(_loc5_ || _loc3_)
                           {
                              _loc3_.§?"?§ = _loc4_;
                           }
                           if(_loc6_)
                           {
                           }
                           break loop1;
                        }
                     }
                     this.§'" §();
                     break;
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4!+§ = §4!+§(param1.currentTarget);
         if(_loc6_ || this)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc5_ && _loc2_))
            {
               loop0:
               while(true)
               {
                  _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                  while(true)
                  {
                     this.§<!#§.shift();
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           var _loc3_:*;
                           §§push((_loc3_ = this).§?"?§);
                           if(_loc6_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc4_:* = §§pop();
                        }
                        else
                        {
                           addr117:
                        }
                        continue loop0;
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc3_.§?"?§ = _loc4_;
                        }
                        if(!(_loc5_ && param1))
                        {
                           break;
                        }
                        return;
                     }
                  }
                  this.§'" §();
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §<"3§(param1:String, param2:String) : §4!+§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§4!+§ = this.§@A§(param1,param2);
         if(!(_loc4_ && param2))
         {
            if(_loc3_.§#!i§())
            {
               if(!(_loc4_ && param2))
               {
                  return _loc3_;
               }
               addr76:
               while(true)
               {
               }
               addr76:
            }
            while(true)
            {
               this.§@"Y§(param1,param2);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr76);
            }
            return _loc3_;
         }
         §§goto(addr76);
      }
      
      private function §@A§(param1:String, param2:String = "") : §4!+§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§4!+§ = this.§4#F§[param1];
         if(_loc4_)
         {
            if(_loc3_ == null)
            {
               addr37:
               _loc3_ = new §4!+§(param2,this.§+=§.width,this.§+=§.height);
               if(_loc4_)
               {
                  this.§4#F§[param1] = _loc3_;
               }
            }
            return _loc3_;
         }
         §§goto(addr37);
      }
   }
}
