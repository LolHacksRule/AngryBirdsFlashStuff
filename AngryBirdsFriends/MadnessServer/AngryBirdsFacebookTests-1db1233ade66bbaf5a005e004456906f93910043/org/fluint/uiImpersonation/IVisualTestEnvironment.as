package org.fluint.uiImpersonation
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public interface IVisualTestEnvironment
   {
       
      
      function addChild(param1:DisplayObject) : DisplayObject;
      
      function addChildAt(param1:DisplayObject, param2:int) : DisplayObject;
      
      function removeChild(param1:DisplayObject) : DisplayObject;
      
      function removeChildAt(param1:int) : DisplayObject;
      
      function removeAllChildren() : void;
      
      function getChildAt(param1:int) : DisplayObject;
      
      function getChildByName(param1:String) : DisplayObject;
      
      function getChildIndex(param1:DisplayObject) : int;
      
      function setChildIndex(param1:DisplayObject, param2:int) : void;
      
      function get numChildren() : int;
      
      function addElement(param1:DisplayObject) : DisplayObject;
      
      function addElementAt(param1:DisplayObject, param2:int) : DisplayObject;
      
      function removeElement(param1:DisplayObject) : DisplayObject;
      
      function removeElementAt(param1:int) : DisplayObject;
      
      function removeAllElements() : void;
      
      function setElementIndex(param1:DisplayObject, param2:int) : void;
      
      function getElementAt(param1:int) : DisplayObject;
      
      function getElementIndex(param1:DisplayObject) : int;
      
      function get testEnvironment() : Sprite;
   }
}
