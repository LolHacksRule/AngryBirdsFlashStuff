package §2`§
{
   import §3!J§.DisplayObject;
   
   public class §%K§ extends §;!Q§
   {
       
      
      private var §[-§:Vector.<§;!Q§>;
      
      private var §!1§:§;!Q§;
      
      public function §%K§(param1:String, param2:§%!!§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§[-§ = new Vector.<§;!Q§>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_);
         
      }
      
      public function §1A§(param1:String, param2:§;!Q§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 != null)
            {
               while(true)
               {
                  if(!this.§!1§)
                  {
                     if(!(_loc3_ && param2))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        this.§!1§ = param2;
                     }
                     loop1:
                     while(_loc4_ || param2)
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     continue;
                     addr63:
                  }
                  while(true)
                  {
                     this.§[-§.push(param2);
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     §§goto(addr63);
                  }
                  return;
               }
            }
            throw new Error("Trying to add a null animation");
         }
         §§goto(addr80);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§!1§.addFrame(param1,param2);
         }
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§!1§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§!1§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§!1§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§!1§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §;!Q§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;!Q§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§[-§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
               }
            }
            return this.§!1§;
         }
         return _loc2_;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§!1§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;!Q§ = null;
         for each(_loc2_ in this.§[-§)
         {
            if(_loc6_)
            {
               if(_loc2_.name == param1)
               {
                  if(_loc6_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.§[-§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §;!Q§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr91:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           return this.§[-§[param1];
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return null;
                     addr61:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr89:
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_ || this)
            {
               §§push(§§pop() < this.§[-§.length);
               if(_loc3_)
               {
                  continue;
               }
               if(_loc3_ && _loc2_)
               {
                  §§goto(addr91);
               }
               §§goto(addr61);
            }
            else
            {
               §§goto(addr89);
            }
         }
      }
   }
}
